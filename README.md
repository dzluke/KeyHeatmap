# Real-time Perceptual Key Heatmap

Video documentation: https://youtu.be/Owc_PgXw-nw

Created by Luke Dzwonczyk

## Abstract

In this paper we present a program that generates a real-time heatmap of the 24 Western diatonic keys given an input of notes. The heatmap shows which keys are perceptually closest to the current audio input. Using data from Krumhansl and Kessler’s 1982 probe tone experiments, we are able to calculate the probability of being in a key given a set of pitches, and map these probabilities onto a space in which the distance between keys corresponds to a perceptual inter-key distance. The heatmap, created using the Max/MSP programming environment, has multiple uses: as a music visualizer, for harmonic analysis, and as a live improvisational tool. 

## I.	Introduction
This project relies on the data collection and analyses performed in (Krumhansl & Kessler, 1982) and (Krumhansl, 2001), and we will first describe the experiments carried out in those papers. First, a probe tone experiment was performed with 10 subjects, all of which were university students. The subjects had an average of 11 years of lessons in their instrument, 12 years in instrumental groups, and 2 years in choral groups. The subjects had little to no formal training in music theory. A probe tone experiment consists of a subject first hearing some musical context and then a tone. The subject is then asked to compare the tone to the initial sequence given some criteria (Huron, 2007). 

This experiment consisted of first establishing a key by having the subject listen to a complete scale, a tonic triad, and three key defining chord progressions (IV-V-I, VI-V-I, and II-V-I). Next, one of the 12 tones of Western classical music was played, and the subject was asked how well the tone “fit” within the tonal center previously defined. Subjects rated the probe tones on a scale from 1 to 7, with higher numbers indicating better fit.

The results of experiment fit well within theoretical understandings of tonality, and were consistent across keys in the same mode. That is, all major keys exhibited similar results and all minor keys exhibited similar results. In major keys, scale degree 1 has the highest rating, followed by degree 5, then 3, and finally the rest of the diatonic pitches in the key. Pitches not in the key scored the lowest. Minor keys were similar, except that degree 3 scored higher than degree 5. With this data, it becomes clear that a tonal hierarchy is present in the Western keys. That is, we can create a key profile for any key, which is a measure of how well each tone fits in a key. The ratings for keys in the same mode were so similar that the same key profile can be used for any major key or any minor key.

The key profiles are then used to construct a measure of similarity between keys; to calculate a measure of inter-key distance. This is done through calculating the statistical correlation between keys. Major keys have the highest correlation with their relative minor, and minor keys with their relative major.

Finally, the authors create a spatial representation of the inter-key distance through the use of a multidimensional scaling algorithm. The keys are mapped onto the surface of a torus, allowing the relationships present in the circle of fifths, and relative and parallel major/minor relationships to be observed. Keys near each other on the torus are more perceptually similar. The toroidal representation can finally be mapped onto a two-dimensional surface, in which the top/bottom and left/right are connected. This spatial mapping of perceptual key distances is the basis for the layout of the key heatmap described in this paper.

This project is inspired by a heatmap visualization created by Petr Janata at the Center for Mind and Brain at UC Davis (Janata, et al., 2002). Using the same torus key mapping from (Krumhansl & Kessler, 1982), Janata models the response to pitch that occurs in the brain, and uses this data to create a key heatmap. In this paper, we set out to achieve a similar result but without modeling neural responses. Instead, we use the probe tone ratings and key profiles from Krumhansl to create a probability space, and map probabilities onto the heatmap.  

### i.	Other spatial representations of diatonic keys
The toroidal map of diatonic keys described previously is not the only spatial representation that has been created. Another geometric layout of keys, invented by Hugo Riemann, is the Tonnetz space (Cohn, 1998). This representation exists in two dimensions, and consists of a grid of triangles in which at each vertex lies a key. For any triangle, the tonics of the three keys at its vertices form a triad. The quality of the triad is encoded in the color of the triangles. Horizontal lines connect keys to their neighbors on the circle of fifths. Diagonal (non-horizontal) lines represent intervals of a third. 

There are two main differences between the tonnetz space and the Krumhansl-Kessler (K-K) torus space. First, in the tonnetz representation, all neighboring keys are the same distance apart; the length of every edge is the same. In the K-K torus representation, the distance between keys differs based on the calculated inter-key distances. Second, the tonnetz space is organized purely based on the rules of music theory, but the K-K representation is based on perceptual data collected in experiments.

The Spiral Array is a three-dimensional representation of keys derived from the Tonnetz space. It involves concentric helices that includes information on pitch, major/minor chords, and major/minor keys (Chew, 2000). Unlike the K-K space, the Spiral Array does not assume enharmonic equivalence, and therefore cannot be mapped to a torus (Chew, 2008). The Spiral Array can be used both for musical analysis and during live performance using MIDI input (Chew & Francois, 2003).

## II.	Implementation
The key heatmap is created in the Max/MSP programming environment, using Jitter objects for matrix calculations and the [rbfi] object for visualization. It is designed to take a set of MIDI pitches as input. When a set is received, a vector of 24 probabilities is calculated, where each element of the vector is the likelihood of being in a given key. These probabilities are then mapped to the color intensity of each point in the [rbfi]. When the next set is received, the probabilities are recalculated and the color intensities adjust accordingly. Therefore, keys that are closest to the notes input will show as red, less likely keys will be a darker red, and unlikely keys will be black.  

The probabilities are taken directly from (Krumhansl & Kessler, 1982) as the probe tone ratings, normalized by dividing by the sum of the ratings for the key. 

A 12x24 matrix is created in which the columns are the probability maps for each of the 24 keys, and each row corresponds to one of the 12 pitches. For example, the first column represents the key of C major, and the first row represents the pitch C. Therefore, the first element in the first column is the probability of being in C major given the pitch C is present is input to the program.

When a single note is input to the program, a “one-hot-encoded” vector of size 12 is created. For example, if the note is D, which has a MIDI value of 2, then the vector will be all zeros except for a 1 in the 3rd position (the vector is 0-indexed). This vector is then right multiplied by the 12x24 probability matrix, which essentially selects a column from the matrix. The result of the multiplication is a vector of size 24 that encodes the probability of being in each of the 24 diatonic keys given the input of the note D.

The program currently allows polyphony of up to 10 notes. When multiple notes are input at the same time, the same process described previously occurs, except instead of multiplying the 12x24 probability matrix by a single vector, it is multiplied by a 10x12 matrix, where each row is a one-hot-encoded vector. After multiplying, the columns of the resulting 10x24 matrix are summed, giving a single vector of length 24, in which each value is the probability of being in one of the 24 keys.

Including temporal sequences of tones is identified as an important step of key identification in (Krumhansl & Toiviainen, 2000). Therefore, the program includes temporal information from the previous inputs. At any time, the probabilities generated are a weighted sum of the probabilities calculated from the current input and the probabilities calculated from the previous 8 inputs.

All inputs to the program must be sets of MIDI notes, however the source of the MIDI data can come from prerecorded MIDI files or from live performance. A major drawback of live performance is the difficulty of pitch detection, especially polyphonic pitch detection. Because of the difficulties associated with polyphonic pitch detection, only monophonic pitch detection was attempted. Monophonic pitch detection occurs using the [fiddle~] object.
	
## III.	Applications
The key heatmap can be used in a variety of ways of varying complexity, from something as a simple visualization of music, up to an improvisational tool. At its most basic level, the heatmap is music visualizer. When the overlay that contains the key names is removed, it becomes simply a moving blend of colors that have a clear, perceptual tie to the harmonic and melodic content of the music. In this state, the heatmap serves an artistic purpose of music visualization. 

When the key names are displayed over the moving colors, the heatmap displays information about the music the listener is hearing. It has then become a tool for informed listening and analysis. By pairing visual and sonic data, a listener has another source of information when analyzing what they are listening to. For example, the heatmap could help a listener identify a specific harmonic progression or key modulation.

Finally, the heatmap can be used as an improvisational tool. Improvisers can view the heatmap and make choices about what notes to play based on its current state. For example, if the notes of the ensemble are being fed to the heatmap, then it will display the close and far keys to the notes currently being played. A performer could then choose to play a chord, scale, or melody within a key that is identified as being close to what the rest of the ensemble is playing, creating an easy way to stay within the key currently being played or provide an opportunity for a modulation to a nearby key. Similarly, a performer could choose to play in a key that is far away from the rest of the ensemble. In this way, the performer and heatmap create a loop in which the heatmap informs the players performance, and the player affects the content of the heatmap.

Performers can also purposefully try to change the heatmap, for example by playing in keys that are far away from the current music, they can attempt to “move” the heatmap towards the key they are playing in. In this scenario, the heatmap is leading to music creation that is occurring as a result of the existence of the heatmap.

## IV.	Testing	
The program was tested with two instrumentalists playing together: a bassist and a pianist. These instruments were purposefully chosen as they work well with the program. Bass is often played monophonically and does not require an external microphone for input. The pianist played a MIDI keyboard, which meant that no pitch detection was required and polyphonic input could be used. Video documentation of the testing is available here: https://youtu.be/Owc_PgXw-nw. 

Three configurations were tested. In the first test, the bass was the only instrument that affected the heatmap. This meant that the bass was in complete control of the heatmap, and the piano improvised based off of the information from the heatmap. In the second test, the reverse setup was used: only the piano affected the heatmap, and the bass improvised off of the heatmap. In the final test, both instruments were input to the heatmap. The players switched between playing “in key” (playing in the red areas) and playing “out of key” (playing in the black areas). Since both instruments were connected to the heatmap, when one player purposefully played in a black area, the heatmap would respond and that area would slowly become red. At that point, the player moves to a new key and the heatmap “follows” them to the new key area.

## V.	Conclusions
We believe one of the strengths of the key heatmap is its ability to make analysis and improvisation more accessible. Students who are new to music theory and ear training could benefit from the simple visual representation of harmonic content. They can get live feedback on the chords they are playing and how those chords fit within the diatonic keys. By creating a connection between the sonic changes and the visual changes, the heatmap can make modulations more clear to a listener studying the harmonic changes.

For the same reasons, those who are new to improvisation can also benefit from the heatmap. If the music being played is tonal, a new improviser can easily tell which key the ensemble is currently playing in, which can make it easier to join. When the ensemble modulates, or starts in a new key, the heatmap will reflect these changes, and the player can adapt as well.

It is worth noting that the heatmap has the potential to limit the performer. Obviously, the heatmap is tied strictly to the 24 diatonic keys of classical Western music. The heatmap will not be beneficial to performers who wish to play free from tonal structures or within different types of keys, modes, or tuning systems. While the heatmap ceases to have use as an improvisational tool in these settings, it could still be interesting as an informational tool, as the system tries to find a key where there is not supposed to be one.

## VI.	Future Work
Currently, the program could benefit from better monophonic and polyphonic pitch detection. This is an important step, since without accurate pitch detection the heatmap is not useful to live performers. One option is to not focus on pitch detection of individual instruments, but instead sum the input from all instruments and take the Fourier transform. By dividing the FFT into twelve bins that represent the twelve pitch classes, the input to the heatmap is not a set of notes but a weight for each pitch class. Further work is needed in Max/MSP to improve this aspect of the program.

As noted previously, including temporal aspects of the music is critical for the representation. Therefore, an avenue for future work is to improve the temporal structure of the program. In (Krumhansl & Toiviainen, 2000), a pitch transition model is proposed that considers pitch, time, and duration. A model is created to represent the transition probabilities from any tone to all subsequent tones, taking into account pitch proximity, temporal proximity, and duration.

A defining aspect of this project are the 24 diatonic keys. The purpose of the program is to visualize which key(s) you are in. The program has difficulty when the key is ambiguous, and players may not want to be confined to this tonal structure. Therefore, an interesting avenue for future work is expanding this structure to the more general domain of pitch class sets. This represents a major change to the program on all levels, but is within the goals of the program as an improvisational tool.

Instead of having the 24 diatonic keys on the heatmap, a user would input any number of pitch class sets. However, when we move away from the 24 diatonic keys, we can no longer use the data from the K-K key profiles to calculate probabilities. The methods, such as multi-dimensional scaling or the self-organizing map (Krumhansl & Toiviainen, 2000), can be applied to this new setting of the problem, but significant work is required to find new ways of finding perceptual distance between arbitrary pitch class sets.

## VII.	Acknowledgments
Special thanks to Alois Cerbu, Jeremy Lee, and Jeremy Wagner.

## VIII.	References

Chew, E. (2000). Towards a Mathematical Model of Tonality. Massachusetts Institute of Technology.
Chew, E. (2008). Out of the Grid and Into the Spiral: Geometric Interpretations of and Comparisons with the Spiral-Array Model . Computing in Musicology, 51-72.
Chew, E., & Francois, A. R. (2003). MuSA.RT: music on the spiral array. real-time. Association for Computing Machinery , (pp. 448-449).
Cohn, R. (1998). Introduction to Neo-Riemannian Theory: A Survey and a Historical Perspective. Journal of Music Theory, 42(2), 167-180.
Huron, D. (2007). Sweet Anticipation: Music and the Psychology of Expectation. Cambridge: MIT Press.
Janata, P., Birk, J. L., Van Horn, J. D., Leman, M., Tillman, B., & Bharucha, J. J. (2002). The Cortical Topography of Tonal Structures Underlying Western Music. Science, 298, 2167-2170.
Krumhansl, C. L. (2001). Quantifying tonal hierarchies and key distances. In C. L. Krumhansl, Cognitive Foundations of Musical Pitch. 
Krumhansl, C. L., & Kessler, E. J. (1982). Tracing the Dynamic Changes in Perceived Tonal Organization in a Spatial Representation of Musical Keys. Psychological review, 89.4, 334-368.
Krumhansl, C. L., & Toiviainen, P. (2000). Dynamics of Tonality Induction: A new method and a new model. International Conference on Music Perception and Cognition. Keele, UK.


