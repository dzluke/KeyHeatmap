{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 2,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ -607.0, -1361.0, 2492.0, 1327.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 912.499995231628418, 1391.899997174739838, 89.0, 20.0 ],
					"text" : "ramp time (ms)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-151",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 299.500016570091248, 67.0, 22.0 ],
									"text" : "list.group 5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-154",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 50.199997782707214, 271.0, 69.0, 22.0 ],
									"text" : "o.route /out"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-150",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.199997782707214, 100.0, 111.0, 22.0 ],
									"text" : "o.pack /values /row"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-149",
									"linecount" : 9,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.199997782707214, 130.0, 414.0, 134.0 ],
									"text" : "# set row to /values\n# sends message: \"setcell #col #row val #val\"\n/num_cols = 24,\n/setcell = nfill(/num_cols, \"setcell\"),\n/col = aseq(0, /num_cols - 1),\n/row = nfill(/num_cols, /row),\n/string/val = nfill(/num_cols, \"val\"),\n\n/out = interleave(/setcell, /col, /row, /string/val, /values)"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-80",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.199993594688408, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-81",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 142.199993594688408, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-87",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.000011594688431, 381.5, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-154", 0 ],
									"source" : [ "obj-149", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 0 ],
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"source" : [ "obj-151", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-151", 0 ],
									"source" : [ "obj-154", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 1 ],
									"source" : [ "obj-81", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 990.999995231628418, 1174.5, 57.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p set row"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 287.000016570091248, 67.0, 22.0 ],
									"text" : "list.group 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 50.199997782707214, 258.5, 69.0, 22.0 ],
									"text" : "o.route /out"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.199997782707214, 100.0, 70.0, 22.0 ],
									"text" : "o.pack /row"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-81",
									"linecount" : 8,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.199997782707214, 130.0, 269.0, 121.0 ],
									"text" : "# get row\n# sends message: \"getcell #col #row\"\n/num_cols = 24,\n/getcell = nfill(/num_cols, \"getcell\"),\n/col = aseq(0, /num_cols - 1),\n/row = nfill(/num_cols, /row),\n\n/out = interleave(/getcell, /col, /row)"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-71",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.199997594688412, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-72",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.000000594688416, 369.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-90", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-96", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 805.999994826316879, 1174.5, 58.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p get row"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 297.0, 100.0, 176.0, 20.0 ],
									"text" : "clear memory of previous notes"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 276.0, 100.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 206.0, 152.0, 47.0 ],
									"text" : "creates a weighted sum of the current and previous 3 timepoints"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-160",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 2,
											"revision" : 1,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 126.0, 80.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-8",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 126.0, 183.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 126.0, 149.0, 325.0, 22.0 ],
													"text" : "0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 126.0, 117.0, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 276.0, 126.0, 34.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-157",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "bang", "bang", "bang" ],
									"patching_rect" : [ 204.0, 125.0, 50.5, 22.0 ],
									"text" : "t l b b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-156",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "FullPacket" ],
									"patching_rect" : [ 204.0, 351.0, 309.0, 22.0 ],
									"text" : "o.route /probs/sum /probs/curr /probs/prev1 /probs/prev2"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-155",
									"linecount" : 7,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 204.0, 236.0, 480.0, 108.0 ],
									"text" : "/probs/curr *= /weights[[0]],\n/probs/prev1 *= /weights[[1]],\n/probs/prev2 *= /weights[[2]],\n/probs/prev3 *= /weights[[3]],\n\n/probs/sum = /probs/curr + /probs/prev1 + /probs/prev2 + /probs/prev3,\n/probs/sum /= 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-153",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 499.0, 152.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-152",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 499.0, 178.0, 92.0, 22.0 ],
									"text" : "1. 0.9 0.7 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-142",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 204.0, 206.0, 362.0, 22.0 ],
									"text" : "o.pack /probs/curr /probs/prev1 /probs/prev2 /probs/prev3 /weights"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-138",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 204.0, 178.0, 46.0, 20.0 ],
									"text" : "current"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-137",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 277.75, 154.0, 29.0, 20.0 ],
									"text" : "t - 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-136",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 351.5, 154.0, 29.0, 20.0 ],
									"text" : "t - 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-135",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 425.25, 154.0, 29.0, 20.0 ],
									"text" : "t - 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-132",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 277.75, 178.0, 44.0, 22.0 ],
									"text" : "list.reg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-131",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 351.5, 178.0, 44.0, 22.0 ],
									"text" : "list.reg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-130",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 425.25, 178.0, 44.0, 22.0 ],
									"text" : "list.reg"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-37",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 204.0, 40.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 3 ],
									"source" : [ "obj-130", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 2 ],
									"source" : [ "obj-131", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 1 ],
									"source" : [ "obj-132", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-155", 0 ],
									"source" : [ "obj-142", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 4 ],
									"source" : [ "obj-152", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-152", 0 ],
									"source" : [ "obj-153", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-156", 0 ],
									"source" : [ "obj-155", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-130", 1 ],
									"source" : [ "obj-156", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 1 ],
									"source" : [ "obj-156", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 1 ],
									"source" : [ "obj-156", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-130", 0 ],
									"source" : [ "obj-157", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"source" : [ "obj-157", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 0 ],
									"source" : [ "obj-157", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 0 ],
									"source" : [ "obj-157", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-130", 1 ],
									"order" : 0,
									"source" : [ "obj-160", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 1 ],
									"order" : 1,
									"source" : [ "obj-160", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 1 ],
									"order" : 2,
									"source" : [ "obj-160", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-160", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-157", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1125.0, 969.0, 221.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p prev: memory of only past 3 timesteps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 710.79999566078186, 986.099989652633667, 70.0, 22.0 ],
					"text" : "loadmess 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-202",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 636.79999566078186, 1025.099989652633667, 150.0, 33.0 ],
					"text" : "i = # of prev timesteps to include"
				}

			}
, 			{
				"box" : 				{
					"cols" : 24,
					"colwidth" : 33,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"hscroll" : 0,
					"id" : "obj-35",
					"maxclass" : "jit.cellblock",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "list", "", "", "" ],
					"patching_rect" : [ 1069.999995231628418, 1247.699999928474426, 464.200003147125244, 37.299997329711914 ],
					"rows" : 9,
					"vscroll" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-197",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 805.999995231628418, 1337.899997174739838, 110.0, 22.0 ],
					"text" : "jit.op @op / @val 9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-193",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 805.999995231628418, 1365.899997174739838, 41.0, 22.0 ],
					"text" : "jit.spill"
				}

			}
, 			{
				"box" : 				{
					"cols" : 24,
					"colwidth" : 33,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"hscroll" : 0,
					"id" : "obj-191",
					"maxclass" : "jit.cellblock",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "list", "", "", "" ],
					"patching_rect" : [ 821.599991679191589, 1308.300008714199066, 617.200003147125244, 20.0 ],
					"rows" : 1,
					"vscroll" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-192",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 79.0, 1212.0, 687.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 108.0, 88.0, 29.5, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"cols" : 24,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "jit.cellblock",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "list", "", "", "" ],
									"patching_rect" : [ 332.0, 100.0, 683.0, 37.0 ],
									"rows" : 9
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 180.0, 115.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"cols" : 24,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-23",
									"maxclass" : "jit.cellblock",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "list", "", "", "" ],
									"patching_rect" : [ 208.0, 302.0, 679.0, 38.0 ],
									"rows" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 208.0, 88.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 208.0, 115.0, 73.0, 22.0 ],
									"text" : "setall 1."
								}

							}
, 							{
								"box" : 								{
									"cols" : 9,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-14",
									"maxclass" : "jit.cellblock",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "list", "", "", "" ],
									"patching_rect" : [ 208.0, 199.0, 683.0, 37.0 ],
									"rows" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 208.0, 144.0, 123.0, 22.0 ],
									"text" : "jit.matrix 1 float32 9 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 108.0, 242.0, 56.0, 22.0 ],
									"text" : "jit.la.mult"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 159.0, 392.0, 150.0, 47.0 ],
									"text" : "output: 1 x 12 matrix, where each entry is a probability of a key"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 159.0, 58.0, 337.0, 20.0 ],
									"text" : "input: 10 x 12 matrix (10 is max number of notes at one time)"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 108.0, 392.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 108.0, 42.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"order" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 1,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"order" : 1,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"order" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 805.999995231628418, 1262.99999725818634, 139.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p sum columns of matrix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-190",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 871.499995231628418, 1206.500000298023224, 112.0, 20.0 ],
					"text" : "matrix dim (i+1, 24)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-188",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 871.499995231628418, 953.0, 171.0, 33.0 ],
					"text" : "trigger: shift all rows down, set 0th row, output new matrix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-184",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 901.999995231628418, 997.499989688396454, 70.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-183",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "", "int", "bang" ],
					"patching_rect" : [ 816.0, 958.5, 50.5, 22.0 ],
					"text" : "t b l 0 b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-182",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 805.999995231628418, 1119.900012969970703, 29.5, 22.0 ],
					"text" : "- 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-172",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 805.999995231628418, 1082.500001847743988, 69.5, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-170",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 901.999995231628418, 1024.899990022182465, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-168",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-14",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 36.0, 227.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 36.0, 198.0, 25.0, 22.0 ],
									"text" : "iter"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 36.0, 170.0, 69.0, 22.0 ],
									"text" : "o.route /out"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-11",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 36.0, 133.0, 163.0, 31.0 ],
									"text" : "/out = aseq(/from, /to)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 36.0, 104.0, 91.0, 22.0 ],
									"text" : "o.pack /from /to"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 238.0, 32.0, 32.0, 20.0 ],
									"text" : "to"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 66.0, 32.0, 32.0, 20.0 ],
									"text" : "from"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 206.0, 32.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.0, 32.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 805.999995231628418, 1054.500001430511475, 115.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p generate_iteration"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-167",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 795.999990463256836, 1024.899990022182465, 19.0, 20.0 ],
					"text" : "i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 805.999995231628418, 1024.899990022182465, 50.0, 22.0 ],
					"tricolor" : [ 1.0, 0.709803921568627, 0.196078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-161",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1028.999995231628418, 1146.300013363361359, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 973.999995231628418, 1271.899999797344208, 74.0, 22.0 ],
					"text" : "list.group 24"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-141",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 973.999995231628418, 1247.699999928474426, 57.0, 22.0 ],
					"text" : "list.mth 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 806.199993014335632, 1146.300013363361359, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 805.999995231628418, 1223.699999928474426, 187.0, 22.0 ],
					"text" : "jit.matrix prob_prev 1 float32 24 9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "ezadc~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1029.25, 93.600001394748688, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 768.0, 323.0, 163.0, 20.0 ],
					"text" : "input: list of MIDI values"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1126.0, 92.0, 188.0, 20.0 ],
					"text" : "test pitch detection with sound file"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-140",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1371.0, 264.0, 39.0, 22.0 ],
					"text" : "round"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-133",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1371.0, 323.0, 29.5, 22.0 ],
					"text" : "48."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-127",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "" ],
					"patching_rect" : [ 1371.0, 231.0, 94.0, 22.0 ],
					"text" : "sigmund~ notes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-125",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1518.0, 93.600001394748688, 32.0, 22.0 ],
					"text" : "r rbfi"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-123",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 837.999995231628418, 1757.399997174739838, 35.0, 22.0 ],
					"text" : "s rbfi"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-120",
					"linecount" : 10,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1316.0, 589.0, 150.0, 149.0 ],
					"text" : "/notes : 10,\n/num_notes : 1,\n/string/setcell : \"setcell\",\n/col : 10,\n/row : 0,\n/string/val : \"val\",\n/ones : 1.,\n/out : [\"setcell\", 10, 0, \"val\", 1.]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1246.0, 323.0, 50.0, 22.0 ],
					"text" : "48."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-115",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1246.0, 264.0, 39.0, 22.0 ],
					"text" : "round"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "bang", "list", "float" ],
					"patching_rect" : [ 1246.0, 231.0, 115.5, 22.0 ],
					"text" : "fiddle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1134.0, 323.0, 50.0, 22.0 ],
					"text" : "62."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 816.0, 354.5, 29.5, 22.0 ],
					"text" : "$1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 1134.0, 264.0, 47.0, 22.0 ],
					"text" : "unpack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1134.0, 291.0, 39.0, 22.0 ],
					"text" : "round"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1168.0, 113.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1131.0, 118.0, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 1131.0, 146.0, 47.0, 22.0 ],
					"text" : "sfplay~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1134.0, 180.0, 196.0, 29.5 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1029.25, 264.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 9,
					"outlettype" : [ "list", "float", "float", "float", "list", "bang", "list", "list", "FullPacket" ],
					"patching_rect" : [ 1134.0, 231.0, 103.0, 22.0 ],
					"text" : "analyzer~"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1037.25, 34.0, 76.0, 22.0 ],
					"text" : "Mic Input"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 300.0, 354.5, 76.0, 22.0 ],
					"text" : "MIDI Input"
				}

			}
, 			{
				"box" : 				{
					"attr" : "fontsize",
					"id" : "obj-51",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1535.0, 128.000001907348633, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"always_draw_circles" : 4294967296,
					"always_draw_labels" : 4294967297,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"id" : "obj-49",
					"maxclass" : "rbfi",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1518.0, 168.400000035762787, 1040.799999892711639, 1040.799999892711639 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 28.400000035762787, 1040.799999892711639, 1040.799999892711639 ],
					"spaces" : [ "space", 24, 0.337193, 0.374659, "b", 0.406782726455248, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.91485, 0.867847, "a#", 0.516240987893745, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.503406, 0.711626, "a", 0.412141030856132, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.084696, 0.539055, "g#", 0.368510791681923, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.666894, 0.371935, "g", 0.819355665736132, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.243642, 0.870572, "f#", 0.192459180973183, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.840372, 0.713442, "f", 0.601970304550649, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.423479, 0.539964, "e", 0.325645879513668, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.014759, 0.380109, "d#", 0.421326224126584, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.577884, 0.872389, "d", 0.648662359428276, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.165531, 0.707993, "c#", 0.364683395132749, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.754087, 0.543597, "c", 1.0, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.159173, 0.430972, "B", 0.063590424401113, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.74228, 0.268392, "A#", 0.759008806337365, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.325386, 0.76703, "A", 0.163867680925906, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.913034, 0.601726, "G#", 0.869069175788506, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.49069, 0.43188, "G", 0.754117313334141, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.074705, 0.270209, "F#", 0.295940022731354, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.660536, 0.770663, "F", 0.582912265983499, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.24455, 0.600817, "E", 0.0, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.830381, 0.43188, "D#", 0.835643550533476, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.410763, 0.267484, "D", 0.510353935183276, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.013851, 0.765213, "C#", 0.512799681684887, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0, 0.572434, 0.600817, "C", 0.730474674085558, 0.0, 0.0, 1.0, 3.321928094887362, 5029780.777594638057053, 0.05, 0.2, 0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 662.0, 862.0, 150.0, 47.0 ],
					"text" : "normalize by the max number of notes allowed (10)"
				}

			}
, 			{
				"box" : 				{
					"cols" : 24,
					"colwidth" : 33,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"hscroll" : 0,
					"id" : "obj-95",
					"maxclass" : "jit.cellblock",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "list", "", "", "" ],
					"patching_rect" : [ 834.0, 909.400000035762787, 617.200003147125244, 20.0 ],
					"rows" : 1,
					"vscroll" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 816.0, 862.0, 117.0, 22.0 ],
					"text" : "jit.op @op / @val 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 890.0, 403.0, 150.0, 20.0 ],
					"text" : "maximum polyphony of 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 816.0, 401.0, 67.0, 22.0 ],
					"text" : "list.slice 10"
				}

			}
, 			{
				"box" : 				{
					"cols" : 24,
					"colwidth" : 33,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"hscroll" : 0,
					"id" : "obj-23",
					"maxclass" : "jit.cellblock",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "list", "", "", "" ],
					"patching_rect" : [ 839.0, 778.400000035762787, 549.200003147125244, 21.599999964237213 ],
					"vscroll" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 436.0, 528.0, 50.0, 22.0 ],
					"text" : "10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 436.0, 499.0, 59.0, 22.0 ],
					"text" : "thresh 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 208.0, 493.0, 31.0, 22.0 ],
					"text" : "next"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 172.5, 493.0, 32.0, 22.0 ],
					"text" : "start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 640.0, 301.5, 20.0, 100.0 ],
					"text" : "I\n\nIV\n\nV\n\nI"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 662.0, 382.5, 35.0, 22.0 ],
					"text" : "0 4 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 662.0, 354.5, 41.0, 22.0 ],
					"text" : "2 7 11"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 662.0, 327.5, 35.0, 22.0 ],
					"text" : "0 5 9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 662.0, 298.5, 35.0, 22.0 ],
					"text" : "0 4 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 653.0, 691.400000035762787, 152.0, 87.0 ],
					"text" : "multiplies current note input by probability matrix, giving a matrix of probabilities where each row are the key probabiltiies for one note"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 388.0, 132.500001907348633, 36.0, 22.0 ],
					"text" : "% 12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 388.0, 69.5, 336.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 257.600001752376556, 763.800002753734589, 43.0, 22.0 ],
									"text" : "zlclear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 188.600001752376556, 763.800002753734589, 67.0, 22.0 ],
									"text" : "list.group 5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 188.600001752376556, 736.800002753734589, 86.0, 22.0 ],
									"text" : "o.route /output"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 199.400000154972076, 525.200004458427429, 32.0, 22.0 ],
									"text" : "+ 12"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 77.400000154972076, 425.903268545866013, 41.0, 22.0 ],
									"text" : "uzi 12"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-10",
									"linecount" : 9,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 188.600001752376556, 584.5, 587.0, 134.0 ],
									"text" : "/num_cols = 12,\n/num_rows = 12,\n/list/setcells = nfill(/num_rows, \"setcell\"),\n/list/cols = nfill(/num_cols, /col),\n/list/rows = aseq(0, /num_rows - 1),\n/list/vals = nfill(/num_rows, \"val\"),\n/list/commas = nfill(/num_rows, \",\"),\n/minor/values = /minor/values / sum(/minor/values),\n/output = interleave(/list/setcells, /list/cols, /list/rows, /list/vals, /minor/values)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 77.400000154972076, 549.200004458427429, 141.0, 22.0 ],
									"text" : "o.pack /minor/values /col"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "int", "int" ],
									"patching_rect" : [ 77.400000154972076, 477.200004458427429, 63.0, 22.0 ],
									"text" : "t b i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 77.400000154972076, 453.200004458427429, 74.0, 22.0 ],
									"text" : "counter 0 11"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 77.400000154972076, 501.200004458427429, 319.0, 22.0 ],
									"text" : "6.33 2.68 3.52 5.38 2.6 3.53 2.54 4.75 3.98 2.69 3.34 3.17"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 77.400000154972076, 525.200004458427429, 41.0, 22.0 ],
									"text" : "list.rot"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 119.0, 768.600002825260162, 43.0, 22.0 ],
									"text" : "zlclear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 768.600002825260162, 67.0, 22.0 ],
									"text" : "list.group 5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "bang", "clear" ],
									"patching_rect" : [ 60.400000154972076, 100.0, 300.60000342130661, 22.0 ],
									"text" : "t b b b clear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 188.600001752376556, 129.10326412320137, 41.0, 22.0 ],
									"text" : "uzi 12"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 50.0, 741.600002825260162, 86.0, 22.0 ],
									"text" : "o.route /output"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-24",
									"linecount" : 10,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 188.600001752376556, 278.400000035762787, 501.0, 147.0 ],
									"text" : "/num_cols = 12,\n/num_rows = 12,\n/list/setcells = nfill(/num_rows, \"setcell\"),\n/list/cols = nfill(/num_cols, /col),\n/list/rows = aseq(0, /num_rows - 1),\n/list/vals = nfill(/num_rows, \"val\"),\n/list/commas = nfill(/num_rows, \",\"),\n/major/values = /major/values / sum(/major/values),\n/output = interleave(/list/setcells, /list/cols, /list/rows, /list/vals, /major/values)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 188.600001752376556, 252.400000035762787, 141.0, 22.0 ],
									"text" : "o.pack /major/values /col"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "int", "int" ],
									"patching_rect" : [ 188.600001752376556, 180.400000035762787, 63.0, 22.0 ],
									"text" : "t b i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 188.600001752376556, 156.400000035762787, 74.0, 22.0 ],
									"text" : "counter 0 11"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 188.600001752376556, 204.400000035762787, 325.0, 22.0 ],
									"text" : "6.35 2.23 3.48 2.33 4.38 4.09 2.52 5.19 2.39 3.66 2.29 2.88"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 188.600001752376556, 228.400000035762787, 41.0, 22.0 ],
									"text" : "list.rot"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-127",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 60.400000154972076, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-128",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 83.849997154972073, 856.981445000000008, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"source" : [ "obj-1", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-127", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 1 ],
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-15", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 1 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 1 ],
									"source" : [ "obj-9", 2 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 152.0, 85.0, 160.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p calculate probability matrix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-126",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 156.0, 439.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 111.0, 439.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 112.0, 469.0, 63.0, 22.0 ],
					"text" : "metro 500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-121",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 85.199999392032623, 493.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-110",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 130.0, 626.0, 101.0, 23.0 ],
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 130.0, 595.0, 109.0, 23.0 ],
					"text" : "makenote 60 200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 85.199999392032623, 565.0, 36.0, 22.0 ],
					"text" : "% 12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 130.0, 565.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 139.0, 493.0, 33.0, 22.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 288.0, 401.0, 33.0, 22.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 349.0, 401.0, 31.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-101",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 421.0, 624.0, 101.0, 23.0 ],
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 421.0, 593.0, 109.0, 23.0 ],
					"text" : "makenote 60 200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 436.0, 470.0, 36.0, 22.0 ],
					"text" : "% 12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 323.0, 401.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 323.0, 440.0, 117.0, 22.0 ],
					"text" : "follow follow_sc.midi"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 8,
					"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "int" ],
					"patching_rect" : [ 112.0, 527.0, 92.5, 22.0 ],
					"save" : [ "#N", "detonate", "u161009616", ";", "#X", "setparam", 0, "Time", 0, 0, 999999, 0, 1000, 200, 0, ";", "#X", "setparam", 1, "Pitch", 0, 0, 127, 60, 12, 4, 0, ";", "#X", "setparam", 2, "Vel", 0, 0, 127, 64, 12, 4, 0, ";", "#X", "setparam", 3, "Dur", 0, 1, 99999, 200, 800, 200, 0, ";", "#X", "setparam", 4, "Chan", 0, 1, 16, 1, 8, 1, 0, ";", "#X", "setparam", 5, "Track", 0, 1, 32, 1, 8, 1, 0, ";", "#X", "setparam", 6, "X1", 0, 0, 999, 0, 80, 20, 0, ";", "#X", "setparam", 7, "X2", 0, 0, 999, 0, 80, 20, 0, ";", "#X", "restore", ";", "#X", 2698, 65, 113, 322, 4, 7, 0, 0, ";", "#X", 0, 68, 113, 378, 4, 7, 0, 0, ";", "#X", 0, 70, 113, 378, 4, 7, 0, 0, ";", "#X", 0, 73, 113, 306, 4, 7, 0, 0, ";", "#X", 386, 65, 113, 305, 4, 7, 0, 0, ";", "#X", 0, 68, 113, 217, 4, 7, 0, 0, ";", "#X", 0, 70, 113, 225, 4, 7, 0, 0, ";", "#X", 0, 73, 113, 281, 4, 7, 0, 0, ";", "#X", 385, 65, 113, 346, 4, 7, 0, 0, ";", "#X", 0, 68, 113, 346, 4, 7, 0, 0, ";", "#X", 0, 70, 113, 362, 4, 7, 0, 0, ";", "#X", 0, 73, 113, 330, 4, 7, 0, 0, ";", "#X", 386, 65, 113, 683, 4, 7, 0, 0, ";", "#X", 0, 68, 113, 707, 4, 7, 0, 0, ";", "#X", 0, 70, 113, 723, 4, 7, 0, 0, ";", "#X", 0, 73, 113, 659, 4, 7, 0, 0, ";", "#X", 771, 65, 113, 691, 4, 7, 0, 0, ";", "#X", 0, 68, 113, 635, 4, 7, 0, 0, ";", "#X", 0, 70, 113, 651, 4, 7, 0, 0, ";", "#X", 0, 73, 113, 675, 4, 7, 0, 0, ";", "#X", 1157, 63, 113, 321, 4, 7, 0, 0, ";", "#X", 0, 67, 113, 297, 4, 7, 0, 0, ";", "#X", 0, 70, 113, 297, 4, 7, 0, 0, ";", "#X", 0, 73, 113, 305, 4, 7, 0, 0, ";", "#X", 385, 63, 113, 378, 4, 7, 0, 0, ";", "#X", 0, 67, 113, 329, 4, 7, 0, 0, ";", "#X", 0, 70, 113, 346, 4, 7, 0, 0, ";", "#X", 0, 73, 113, 378, 4, 7, 0, 0, ";", "#X", 386, 65, 113, 377, 4, 7, 0, 0, ";", "#X", 0, 68, 113, 353, 4, 7, 0, 0, ";", "#X", 0, 70, 113, 321, 4, 7, 0, 0, ";", "#X", 385, 67, 113, 378, 4, 7, 0, 0, ";", "#X", 0, 70, 113, 378, 4, 7, 0, 0, ";", "#X", 0, 73, 113, 378, 4, 7, 0, 0, ";", "#X", 386, 65, 113, 185, 4, 7, 0, 0, ";", "#X", 0, 68, 113, 185, 4, 7, 0, 0, ";", "#X", 193, 63, 113, 803, 4, 7, 0, 0, ";", "#X", 0, 67, 113, 690, 4, 7, 0, 0, ";", "#X", 963, 63, 113, 354, 4, 7, 0, 0, ";", "#X", 0, 66, 113, 290, 4, 7, 0, 0, ";", "#X", 0, 68, 113, 362, 4, 7, 0, 0, ";", "#X", 0, 72, 113, 322, 4, 7, 0, 0, ";", "#X", 386, 63, 113, 321, 4, 7, 0, 0, ";", "#X", 0, 66, 113, 289, 4, 7, 0, 0, ";", "#X", 0, 68, 113, 329, 4, 7, 0, 0, ";", "#X", 0, 72, 113, 337, 4, 7, 0, 0, ";", "#X", 386, 63, 113, 353, 4, 7, 0, 0, ";", "#X", 0, 66, 113, 297, 4, 7, 0, 0, ";", "#X", 0, 68, 113, 377, 4, 7, 0, 0, ";", "#X", 0, 72, 113, 353, 4, 7, 0, 0, ";", "#X", 385, 63, 113, 763, 4, 7, 0, 0, ";", "#X", 0, 66, 113, 763, 4, 7, 0, 0, ";", "#X", 0, 70, 113, 763, 4, 7, 0, 0, ";", "#X", 0, 73, 113, 763, 4, 7, 0, 0, ";", "#X", 771, 63, 113, 217, 4, 7, 0, 0, ";", "#X", 0, 66, 113, 193, 4, 7, 0, 0, ";", "#X", 0, 68, 113, 667, 4, 7, 0, 0, ";", "#X", 0, 72, 113, 763, 4, 7, 0, 0, ";", "#X", 771, 68, 113, 313, 4, 7, 0, 0, ";", "#X", 386, 61, 113, 176, 4, 7, 0, 0, ";", "#X", 0, 65, 113, 168, 4, 7, 0, 0, ";", "#X", 0, 68, 113, 176, 4, 7, 0, 0, ";", "#X", 0, 73, 113, 209, 4, 7, 0, 0, ";", "#X", 385, 61, 113, 378, 4, 7, 0, 0, ";", "#X", 0, 65, 113, 185, 4, 7, 0, 0, ";", "#X", 0, 68, 113, 346, 4, 7, 0, 0, ";", "#X", 0, 73, 113, 378, 4, 7, 0, 0, ";", "#X", 386, 66, 113, 297, 4, 7, 0, 0, ";", "#X", 0, 70, 113, 377, 4, 7, 0, 0, ";", "#X", 385, 65, 113, 378, 4, 7, 0, 0, ";", "#X", 0, 68, 113, 378, 4, 7, 0, 0, ";", "#X", 386, 63, 113, 377, 4, 7, 0, 0, ";", "#X", 0, 66, 113, 377, 4, 7, 0, 0, ";", "#X", 385, 61, 113, 1462, 4, 7, 0, 0, ";", "#X", 0, 65, 113, 1414, 4, 7, 0, 0, ";", "#X", 1928, 46, 120, 16554, 1, 4, 0, 0, ";", "#X", 0, 53, 123, 2659, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 330, 1, 4, 0, 0, ";", "#X", 0, 61, 123, 482, 1, 4, 0, 0, ";", "#X", 0, 65, 122, 418, 1, 4, 0, 0, ";", "#X", 0, 65, 104, 643, 3, 6, 0, 0, ";", "#X", 0, 46, 113, 215880, 4, 7, 0, 0, ";", "#X", 0, 53, 113, 3044, 4, 7, 0, 0, ";", "#X", 0, 58, 113, 2964, 4, 7, 0, 0, ";", "#X", 0, 61, 113, 3076, 4, 7, 0, 0, ";", "#X", 0, 65, 113, 3076, 4, 7, 0, 0, ";", "#X", 386, 58, 95, 425, 1, 4, 0, 0, ";", "#X", 385, 61, 121, 450, 1, 4, 0, 0, ";", "#X", 0, 65, 122, 354, 1, 4, 0, 0, ";", "#X", 0, 65, 111, 330, 3, 6, 0, 0, ";", "#X", 386, 58, 104, 434, 1, 4, 0, 0, ";", "#X", 0, 65, 110, 1470, 3, 6, 0, 0, ";", "#X", 385, 61, 121, 458, 1, 4, 0, 0, ";", "#X", 0, 65, 122, 386, 1, 4, 0, 0, ";", "#X", 386, 58, 109, 466, 1, 4, 0, 0, ";", "#X", 385, 61, 120, 450, 1, 4, 0, 0, ";", "#X", 0, 65, 120, 418, 1, 4, 0, 0, ";", "#X", 386, 58, 116, 161, 1, 4, 0, 0, ";", "#X", 0, 65, 111, 337, 3, 6, 0, 0, ";", "#X", 386, 49, 123, 23204, 1, 4, 0, 0, ";", "#X", 0, 56, 122, 2835, 1, 4, 0, 0, ";", "#X", 0, 59, 123, 289, 1, 4, 0, 0, ";", "#X", 0, 61, 123, 401, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 449, 1, 4, 0, 0, ";", "#X", 0, 65, 117, 329, 3, 6, 0, 0, ";", "#X", 0, 59, 113, 763, 4, 7, 0, 0, ";", "#X", 385, 59, 118, 466, 1, 4, 0, 0, ";", "#X", 0, 65, 116, 386, 3, 6, 0, 0, ";", "#X", 386, 61, 122, 449, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 409, 1, 4, 0, 0, ";", "#X", 0, 66, 115, 425, 3, 6, 0, 0, ";", "#X", 0, 66, 113, 377, 4, 7, 0, 0, ";", "#X", 385, 59, 110, 426, 1, 4, 0, 0, ";", "#X", 0, 68, 113, 803, 3, 6, 0, 0, ";", "#X", 0, 68, 113, 763, 4, 7, 0, 0, ";", "#X", 386, 61, 121, 449, 1, 4, 0, 0, ";", "#X", 0, 65, 118, 417, 1, 4, 0, 0, ";", "#X", 385, 59, 117, 434, 1, 4, 0, 0, ";", "#X", 0, 61, 103, 852, 3, 6, 0, 0, ";", "#X", 0, 61, 113, 763, 4, 7, 0, 0, ";", "#X", 386, 61, 120, 514, 1, 4, 0, 0, ";", "#X", 0, 65, 122, 361, 1, 4, 0, 0, ";", "#X", 385, 59, 117, 177, 1, 4, 0, 0, ";", "#X", 0, 70, 101, 2884, 3, 6, 0, 0, ";", "#X", 0, 66, 113, 3462, 4, 7, 0, 0, ";", "#X", 0, 70, 113, 3462, 4, 7, 0, 0, ";", "#X", 386, 42, 121, 3092, 1, 4, 0, 0, ";", "#X", 0, 54, 118, 3060, 1, 4, 0, 0, ";", "#X", 0, 61, 123, 482, 1, 4, 0, 0, ";", "#X", 0, 66, 118, 474, 1, 4, 0, 0, ";", "#X", 0, 70, 121, 434, 1, 4, 0, 0, ";", "#X", 385, 58, 116, 426, 1, 4, 0, 0, ";", "#X", 386, 61, 122, 418, 1, 4, 0, 0, ";", "#X", 0, 66, 121, 385, 1, 4, 0, 0, ";", "#X", 0, 70, 121, 369, 1, 4, 0, 0, ";", "#X", 385, 58, 117, 434, 1, 4, 0, 0, ";", "#X", 386, 61, 121, 466, 1, 4, 0, 0, ";", "#X", 0, 66, 122, 458, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 410, 1, 4, 0, 0, ";", "#X", 386, 58, 116, 441, 1, 4, 0, 0, ";", "#X", 385, 61, 120, 426, 1, 4, 0, 0, ";", "#X", 0, 66, 119, 426, 1, 4, 0, 0, ";", "#X", 0, 70, 121, 402, 1, 4, 0, 0, ";", "#X", 386, 58, 115, 417, 1, 4, 0, 0, ";", "#X", 385, 51, 123, 3133, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 474, 1, 4, 0, 0, ";", "#X", 0, 66, 122, 418, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 370, 1, 4, 0, 0, ";", "#X", 0, 70, 107, 1133, 3, 6, 0, 0, ";", "#X", 0, 82, 47, 739, 3, 6, 0, 0, ";", "#X", 0, 58, 113, 3077, 4, 7, 0, 0, ";", "#X", 0, 63, 113, 3077, 4, 7, 0, 0, ";", "#X", 386, 58, 109, 425, 1, 4, 0, 0, ";", "#X", 385, 63, 122, 434, 1, 4, 0, 0, ";", "#X", 0, 66, 119, 410, 1, 4, 0, 0, ";", "#X", 0, 70, 122, 370, 1, 4, 0, 0, ";", "#X", 0, 82, 104, 2330, 3, 6, 0, 0, ";", "#X", 386, 58, 115, 434, 1, 4, 0, 0, ";", "#X", 0, 70, 117, 723, 3, 6, 0, 0, ";", "#X", 385, 63, 122, 434, 1, 4, 0, 0, ";", "#X", 0, 66, 120, 386, 1, 4, 0, 0, ";", "#X", 0, 70, 120, 290, 1, 4, 0, 0, ";", "#X", 386, 58, 108, 426, 1, 4, 0, 0, ";", "#X", 0, 70, 115, 1157, 3, 6, 0, 0, ";", "#X", 385, 63, 121, 418, 1, 4, 0, 0, ";", "#X", 0, 66, 117, 274, 1, 4, 0, 0, ";", "#X", 0, 70, 122, 739, 1, 4, 0, 0, ";", "#X", 386, 58, 115, 185, 1, 4, 0, 0, ";", "#X", 386, 44, 109, 1743, 1, 4, 0, 0, ";", "#X", 0, 56, 122, 441, 1, 4, 0, 0, ";", "#X", 0, 60, 119, 240, 1, 4, 0, 0, ";", "#X", 0, 63, 122, 409, 1, 4, 0, 0, ";", "#X", 0, 68, 123, 385, 1, 4, 0, 0, ";", "#X", 0, 68, 111, 305, 3, 6, 0, 0, ";", "#X", 0, 80, 76, 313, 3, 6, 0, 0, ";", "#X", 0, 56, 113, 763, 4, 7, 0, 0, ";", "#X", 0, 60, 113, 763, 4, 7, 0, 0, ";", "#X", 0, 68, 113, 763, 4, 7, 0, 0, ";", "#X", 385, 51, 120, 378, 1, 4, 0, 0, ";", "#X", 0, 60, 119, 442, 1, 4, 0, 0, ";", "#X", 0, 68, 116, 426, 3, 6, 0, 0, ";", "#X", 0, 80, 110, 434, 3, 6, 0, 0, ";", "#X", 386, 56, 123, 409, 1, 4, 0, 0, ";", "#X", 0, 63, 122, 353, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 425, 1, 4, 0, 0, ";", "#X", 0, 70, 117, 385, 3, 6, 0, 0, ";", "#X", 0, 82, 112, 449, 3, 6, 0, 0, ";", "#X", 0, 58, 113, 377, 4, 7, 0, 0, ";", "#X", 0, 70, 113, 377, 4, 7, 0, 0, ";", "#X", 385, 51, 119, 1044, 1, 4, 0, 0, ";", "#X", 0, 60, 114, 1052, 1, 4, 0, 0, ";", "#X", 0, 68, 119, 249, 1, 4, 0, 0, ";", "#X", 0, 68, 111, 233, 3, 6, 0, 0, ";", "#X", 0, 80, 112, 225, 3, 6, 0, 0, ";", "#X", 0, 56, 113, 185, 4, 7, 0, 0, ";", "#X", 0, 68, 113, 185, 4, 7, 0, 0, ";", "#X", 193, 66, 113, 265, 1, 4, 0, 0, ";", "#X", 0, 66, 113, 185, 3, 6, 0, 0, ";", "#X", 0, 78, 108, 185, 3, 6, 0, 0, ";", "#X", 0, 66, 113, 185, 4, 7, 0, 0, ";", "#X", 193, 63, 115, 618, 1, 4, 0, 0, ";", "#X", 0, 63, 116, 329, 3, 6, 0, 0, ";", "#X", 0, 75, 118, 305, 3, 6, 0, 0, ";", "#X", 0, 63, 113, 160, 4, 7, 0, 0, ";", "#X", 771, 65, 121, 369, 1, 4, 0, 0, ";", "#X", 0, 65, 83, 490, 3, 6, 0, 0, ";", "#X", 0, 65, 113, 377, 4, 7, 0, 0, ";", "#X", 385, 66, 117, 378, 1, 4, 0, 0, ";", "#X", 0, 66, 112, 434, 3, 6, 0, 0, ";", "#X", 0, 66, 113, 378, 4, 7, 0, 0, ";", "#X", 386, 47, 117, 273, 1, 4, 0, 0, ";", "#X", 0, 54, 122, 610, 1, 4, 0, 0, ";", "#X", 0, 59, 123, 281, 1, 4, 0, 0, ";", "#X", 0, 63, 121, 265, 1, 4, 0, 0, ";", "#X", 0, 66, 122, 8, 1, 4, 0, 0, ";", "#X", 0, 71, 123, 249, 1, 4, 0, 0, ";", "#X", 0, 71, 115, 305, 3, 6, 0, 0, ";", "#X", 0, 59, 113, 257, 4, 7, 0, 0, ";", "#X", 0, 63, 113, 281, 4, 7, 0, 0, ";", "#X", 0, 71, 113, 281, 4, 7, 0, 0, ";", "#X", 385, 47, 113, 217, 1, 4, 0, 0, ";", "#X", 0, 59, 122, 209, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 314, 1, 4, 0, 0, ";", "#X", 0, 66, 122, 265, 1, 4, 0, 0, ";", "#X", 0, 71, 122, 346, 1, 4, 0, 0, ";", "#X", 0, 71, 114, 410, 3, 6, 0, 0, ";", "#X", 0, 59, 113, 378, 4, 7, 0, 0, ";", "#X", 0, 63, 113, 282, 4, 7, 0, 0, ";", "#X", 0, 71, 113, 346, 4, 7, 0, 0, ";", "#X", 386, 46, 117, 1847, 1, 4, 0, 0, ";", "#X", 0, 53, 123, 281, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 281, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 233, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 289, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 217, 1, 4, 0, 0, ";", "#X", 0, 70, 116, 289, 3, 6, 0, 0, ";", "#X", 0, 58, 113, 353, 4, 7, 0, 0, ";", "#X", 0, 65, 113, 321, 4, 7, 0, 0, ";", "#X", 0, 70, 113, 265, 4, 7, 0, 0, ";", "#X", 771, 45, 120, 289, 1, 4, 0, 0, ";", "#X", 0, 52, 123, 337, 1, 4, 0, 0, ";", "#X", 0, 57, 123, 273, 1, 4, 0, 0, ";", "#X", 0, 61, 113, 265, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 305, 1, 4, 0, 0, ";", "#X", 0, 69, 117, 265, 1, 4, 0, 0, ";", "#X", 0, 69, 111, 305, 3, 6, 0, 0, ";", "#X", 0, 57, 113, 265, 4, 7, 0, 0, ";", "#X", 0, 64, 113, 297, 4, 7, 0, 0, ";", "#X", 0, 69, 113, 257, 4, 7, 0, 0, ";", "#X", 386, 45, 117, 144, 1, 4, 0, 0, ";", "#X", 0, 52, 117, 249, 1, 4, 0, 0, ";", "#X", 0, 57, 122, 200, 1, 4, 0, 0, ";", "#X", 0, 61, 123, 297, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 168, 1, 4, 0, 0, ";", "#X", 0, 69, 120, 265, 1, 4, 0, 0, ";", "#X", 0, 69, 118, 385, 3, 6, 0, 0, ";", "#X", 0, 57, 113, 361, 4, 7, 0, 0, ";", "#X", 0, 64, 113, 377, 4, 7, 0, 0, ";", "#X", 0, 69, 113, 361, 4, 7, 0, 0, ";", "#X", 385, 46, 118, 1984, 1, 4, 0, 0, ";", "#X", 0, 53, 123, 321, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 370, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 233, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 313, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 337, 1, 4, 0, 0, ";", "#X", 0, 70, 117, 354, 3, 6, 0, 0, ";", "#X", 0, 58, 113, 346, 4, 7, 0, 0, ";", "#X", 0, 65, 113, 321, 4, 7, 0, 0, ";", "#X", 0, 70, 113, 394, 4, 7, 0, 0, ";", "#X", 771, 47, 119, 281, 1, 4, 0, 0, ";", "#X", 0, 54, 121, 611, 1, 4, 0, 0, ";", "#X", 0, 59, 123, 265, 1, 4, 0, 0, ";", "#X", 0, 63, 122, 233, 1, 4, 0, 0, ";", "#X", 0, 66, 119, 321, 1, 4, 0, 0, ";", "#X", 0, 71, 123, 265, 1, 4, 0, 0, ";", "#X", 0, 71, 110, 313, 3, 6, 0, 0, ";", "#X", 0, 59, 113, 241, 4, 7, 0, 0, ";", "#X", 0, 66, 113, 305, 4, 7, 0, 0, ";", "#X", 0, 71, 113, 289, 4, 7, 0, 0, ";", "#X", 386, 47, 117, 201, 1, 4, 0, 0, ";", "#X", 0, 59, 123, 201, 1, 4, 0, 0, ";", "#X", 0, 63, 121, 257, 1, 4, 0, 0, ";", "#X", 0, 66, 119, 225, 1, 4, 0, 0, ";", "#X", 0, 71, 123, 305, 1, 4, 0, 0, ";", "#X", 0, 71, 118, 385, 3, 6, 0, 0, ";", "#X", 0, 59, 113, 377, 4, 7, 0, 0, ";", "#X", 0, 66, 113, 361, 4, 7, 0, 0, ";", "#X", 0, 71, 113, 377, 4, 7, 0, 0, ";", "#X", 385, 46, 18, 2233, 1, 4, 0, 0, ";", "#X", 0, 53, 121, 354, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 378, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 233, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 394, 1, 4, 0, 0, ";", "#X", 0, 70, 121, 289, 1, 4, 0, 0, ";", "#X", 0, 70, 117, 442, 3, 6, 0, 0, ";", "#X", 0, 58, 113, 402, 4, 7, 0, 0, ";", "#X", 0, 65, 113, 394, 4, 7, 0, 0, ";", "#X", 0, 70, 113, 370, 4, 7, 0, 0, ";", "#X", 771, 45, 117, 490, 1, 4, 0, 0, ";", "#X", 0, 52, 121, 595, 1, 4, 0, 0, ";", "#X", 0, 57, 120, 233, 1, 4, 0, 0, ";", "#X", 0, 61, 122, 201, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 265, 1, 4, 0, 0, ";", "#X", 0, 69, 117, 257, 1, 4, 0, 0, ";", "#X", 0, 69, 115, 298, 3, 6, 0, 0, ";", "#X", 0, 57, 113, 290, 4, 7, 0, 0, ";", "#X", 0, 64, 113, 378, 4, 7, 0, 0, ";", "#X", 0, 69, 113, 378, 4, 7, 0, 0, ";", "#X", 386, 57, 116, 217, 1, 4, 0, 0, ";", "#X", 0, 61, 120, 321, 1, 4, 0, 0, ";", "#X", 0, 64, 119, 153, 1, 4, 0, 0, ";", "#X", 0, 69, 116, 321, 1, 4, 0, 0, ";", "#X", 0, 69, 115, 225, 3, 6, 0, 0, ";", "#X", 0, 57, 113, 377, 4, 7, 0, 0, ";", "#X", 385, 46, 112, 15920, 1, 4, 0, 0, ";", "#X", 0, 53, 122, 747, 1, 4, 0, 0, ";", "#X", 0, 58, 122, 555, 1, 4, 0, 0, ";", "#X", 0, 62, 121, 515, 1, 4, 0, 0, ";", "#X", 0, 65, 122, 747, 1, 4, 0, 0, ";", "#X", 0, 70, 122, 812, 1, 4, 0, 0, ";", "#X", 0, 70, 113, 964, 3, 6, 0, 0, ";", "#X", 0, 58, 113, 434, 4, 7, 0, 0, ";", "#X", 0, 65, 113, 394, 4, 7, 0, 0, ";", "#X", 0, 70, 113, 314, 4, 7, 0, 0, ";", "#X", 772, 51, 123, 827, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 538, 1, 4, 0, 0, ";", "#X", 0, 63, 122, 257, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 490, 1, 4, 0, 0, ";", "#X", 0, 63, 113, 1510, 4, 7, 0, 0, ";", "#X", 0, 67, 113, 1518, 4, 7, 0, 0, ";", "#X", 0, 70, 113, 1534, 4, 7, 0, 0, ";", "#X", 385, 63, 118, 426, 1, 4, 0, 0, ";", "#X", 0, 67, 76, 281, 3, 6, 0, 0, ";", "#X", 386, 58, 123, 409, 1, 4, 0, 0, ";", "#X", 0, 67, 122, 763, 1, 4, 0, 0, ";", "#X", 0, 70, 122, 353, 1, 4, 0, 0, ";", "#X", 0, 67, 117, 321, 3, 6, 0, 0, ";", "#X", 385, 51, 122, 402, 1, 4, 0, 0, ";", "#X", 0, 63, 118, 338, 1, 4, 0, 0, ";", "#X", 0, 67, 118, 482, 3, 6, 0, 0, ";", "#X", 386, 50, 121, 779, 1, 4, 0, 0, ";", "#X", 0, 58, 121, 594, 1, 4, 0, 0, ";", "#X", 0, 62, 122, 249, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 458, 1, 4, 0, 0, ";", "#X", 0, 65, 115, 763, 3, 6, 0, 0, ";", "#X", 0, 62, 113, 956, 4, 7, 0, 0, ";", "#X", 0, 65, 113, 956, 4, 7, 0, 0, ";", "#X", 385, 62, 121, 434, 1, 4, 0, 0, ";", "#X", 386, 58, 122, 417, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 426, 1, 4, 0, 0, ";", "#X", 0, 70, 120, 723, 1, 4, 0, 0, ";", "#X", 0, 70, 112, 803, 3, 6, 0, 0, ";", "#X", 193, 70, 113, 570, 4, 7, 0, 0, ";", "#X", 192, 50, 120, 426, 1, 4, 0, 0, ";", "#X", 0, 62, 121, 169, 1, 4, 0, 0, ";", "#X", 386, 49, 122, 126136, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 723, 1, 4, 0, 0, ";", "#X", 0, 61, 123, 233, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 474, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 482, 1, 4, 0, 0, ";", "#X", 0, 64, 115, 329, 3, 6, 0, 0, ";", "#X", 0, 61, 113, 377, 4, 7, 0, 0, ";", "#X", 0, 64, 113, 377, 4, 7, 0, 0, ";", "#X", 385, 61, 120, 675, 1, 4, 0, 0, ";", "#X", 0, 64, 117, 314, 3, 6, 0, 0, ";", "#X", 0, 67, 113, 378, 4, 7, 0, 0, ";", "#X", 386, 64, 123, 361, 1, 4, 0, 0, ";", "#X", 0, 67, 122, 667, 1, 4, 0, 0, ";", "#X", 0, 64, 117, 329, 3, 6, 0, 0, ";", "#X", 0, 70, 113, 763, 4, 7, 0, 0, ";", "#X", 386, 58, 122, 289, 1, 4, 0, 0, ";", "#X", 0, 61, 118, 305, 1, 4, 0, 0, ";", "#X", 0, 70, 122, 337, 1, 4, 0, 0, ";", "#X", 0, 65, 110, 377, 3, 6, 0, 0, ";", "#X", 385, 48, 117, 1181, 1, 4, 0, 0, ";", "#X", 0, 57, 123, 1060, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 233, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 490, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 514, 1, 4, 0, 0, ";", "#X", 0, 65, 117, 819, 3, 6, 0, 0, ";", "#X", 0, 60, 113, 763, 4, 7, 0, 0, ";", "#X", 0, 65, 113, 763, 4, 7, 0, 0, ";", "#X", 0, 69, 113, 763, 4, 7, 0, 0, ";", "#X", 386, 60, 112, 490, 1, 4, 0, 0, ";", "#X", 385, 65, 123, 466, 1, 4, 0, 0, ";", "#X", 0, 69, 122, 1928, 1, 4, 0, 0, ";", "#X", 0, 60, 113, 370, 3, 6, 0, 0, ";", "#X", 0, 63, 113, 763, 4, 7, 0, 0, ";", "#X", 386, 60, 117, 1237, 1, 4, 0, 0, ";", "#X", 0, 63, 110, 2120, 3, 6, 0, 0, ";", "#X", 385, 41, 120, 2265, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 1398, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 1510, 1, 4, 0, 0, ";", "#X", 0, 72, 122, 1470, 1, 4, 0, 0, ";", "#X", 0, 65, 103, 1639, 3, 6, 0, 0, ";", "#X", 0, 69, 104, 1663, 3, 6, 0, 0, ";", "#X", 0, 72, 113, 1639, 4, 7, 0, 0, ";", "#X", 386, 48, 119, 1936, 1, 4, 0, 0, ";", "#X", 385, 57, 123, 1245, 1, 4, 0, 0, ";", "#X", 386, 60, 119, 932, 1, 4, 0, 0, ";", "#X", 385, 63, 18, 731, 1, 4, 0, 0, ";", "#X", 0, 69, 117, 33, 1, 4, 0, 0, ";", "#X", 0, 72, 121, 611, 1, 4, 0, 0, ";", "#X", 771, 57, 122, 707, 1, 4, 0, 0, ";", "#X", 0, 57, 98, 796, 3, 6, 0, 0, ";", "#X", 0, 57, 113, 764, 4, 7, 0, 0, ";", "#X", 772, 34, 121, 2867, 1, 4, 0, 0, ";", "#X", 0, 46, 123, 9237, 1, 4, 0, 0, ";", "#X", 0, 58, 119, 522, 1, 4, 0, 0, ";", "#X", 0, 58, 89, 5718, 3, 6, 0, 0, ";", "#X", 0, 58, 113, 5735, 4, 7, 0, 0, ";", "#X", 385, 53, 115, 1277, 1, 4, 0, 0, ";", "#X", 386, 58, 117, 1951, 1, 4, 0, 0, ";", "#X", 385, 62, 115, 1293, 1, 4, 0, 0, ";", "#X", 386, 67, 116, 2731, 1, 4, 0, 0, ";", "#X", 0, 79, 116, 1614, 1, 4, 0, 0, ";", "#X", 385, 53, 101, 434, 1, 4, 0, 0, ";", "#X", 386, 65, 117, 699, 1, 4, 0, 0, ";", "#X", 0, 77, 118, 731, 1, 4, 0, 0, ";", "#X", 385, 53, 107, 434, 1, 4, 0, 0, ";", "#X", 386, 34, 123, 2803, 1, 4, 0, 0, ";", "#X", 0, 58, 118, 458, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 450, 1, 4, 0, 0, ";", "#X", 385, 53, 104, 1245, 1, 4, 0, 0, ";", "#X", 386, 58, 113, 1912, 1, 4, 0, 0, ";", "#X", 386, 62, 116, 891, 1, 4, 0, 0, ";", "#X", 385, 67, 116, 1615, 1, 4, 0, 0, ";", "#X", 0, 79, 116, 1615, 1, 4, 0, 0, ";", "#X", 386, 53, 108, 482, 1, 4, 0, 0, ";", "#X", 385, 65, 118, 731, 1, 4, 0, 0, ";", "#X", 0, 77, 118, 731, 1, 4, 0, 0, ";", "#X", 386, 53, 115, 409, 1, 4, 0, 0, ";", "#X", 385, 72, 121, 89, 6, 2, 0, 0, ";", "#X", 0, 74, 119, 2651, 6, 2, 0, 0, ";", "#X", 0, 34, 123, 3093, 1, 4, 0, 0, ";", "#X", 0, 46, 123, 15430, 1, 4, 0, 0, ";", "#X", 0, 58, 122, 330, 1, 4, 0, 0, ";", "#X", 0, 62, 122, 779, 1, 4, 0, 0, ";", "#X", 386, 53, 113, 1197, 1, 4, 0, 0, ";", "#X", 385, 58, 115, 1952, 1, 4, 0, 0, ";", "#X", 386, 62, 115, 1189, 1, 4, 0, 0, ";", "#X", 385, 67, 117, 1607, 1, 4, 0, 0, ";", "#X", 0, 79, 116, 1615, 1, 4, 0, 0, ";", "#X", 386, 53, 115, 602, 1, 4, 0, 0, ";", "#X", 385, 65, 120, 804, 1, 4, 0, 0, ";", "#X", 0, 77, 118, 731, 1, 4, 0, 0, ";", "#X", 386, 70, 121, 386, 6, 2, 0, 0, ";", "#X", 0, 53, 114, 402, 1, 4, 0, 0, ";", "#X", 386, 72, 122, 361, 6, 2, 0, 0, ";", "#X", 0, 43, 122, 3100, 1, 4, 0, 0, ";", "#X", 0, 58, 120, 441, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 851, 1, 4, 0, 0, ";", "#X", 385, 74, 117, 2145, 6, 2, 0, 0, ";", "#X", 0, 55, 116, 1325, 1, 4, 0, 0, ";", "#X", 193, 73, 118, 144, 6, 2, 0, 0, ";", "#X", 193, 58, 117, 2016, 1, 4, 0, 0, ";", "#X", 385, 62, 118, 1173, 1, 4, 0, 0, ";", "#X", 386, 69, 117, 417, 1, 4, 0, 0, ";", "#X", 0, 81, 116, 1614, 1, 4, 0, 0, ";", "#X", 385, 55, 117, 1125, 1, 4, 0, 0, ";", "#X", 386, 67, 121, 851, 1, 4, 0, 0, ";", "#X", 0, 79, 118, 731, 1, 4, 0, 0, ";", "#X", 385, 74, 123, 378, 6, 2, 0, 0, ";", "#X", 0, 62, 117, 129, 1, 4, 0, 0, ";", "#X", 386, 75, 123, 385, 6, 2, 0, 0, ";", "#X", 0, 36, 123, 2900, 1, 4, 0, 0, ";", "#X", 0, 48, 123, 2859, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 353, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 546, 1, 4, 0, 0, ";", "#X", 385, 77, 122, 201, 6, 2, 0, 0, ";", "#X", 0, 60, 119, 1270, 1, 4, 0, 0, ";", "#X", 193, 75, 121, 386, 6, 2, 0, 0, ";", "#X", 193, 63, 117, 1791, 1, 4, 0, 0, ";", "#X", 193, 74, 120, 337, 6, 2, 0, 0, ";", "#X", 193, 67, 109, 1220, 1, 4, 0, 0, ";", "#X", 192, 72, 120, 1245, 6, 2, 0, 0, ";", "#X", 193, 74, 116, 442, 1, 4, 0, 0, ";", "#X", 0, 86, 116, 1615, 1, 4, 0, 0, ";", "#X", 386, 60, 119, 1204, 1, 4, 0, 0, ";", "#X", 385, 72, 121, 2249, 1, 4, 0, 0, ";", "#X", 0, 84, 118, 731, 1, 4, 0, 0, ";", "#X", 386, 72, 120, 257, 6, 2, 0, 0, ";", "#X", 0, 63, 121, 731, 1, 4, 0, 0, ";", "#X", 192, 74, 122, 282, 6, 2, 0, 0, ";", "#X", 193, 75, 121, 370, 6, 2, 0, 0, ";", "#X", 0, 36, 123, 450, 1, 4, 0, 0, ";", "#X", 0, 48, 123, 1510, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 731, 1, 4, 0, 0, ";", "#X", 386, 77, 121, 273, 6, 2, 0, 0, ";", "#X", 0, 60, 114, 747, 1, 4, 0, 0, ";", "#X", 193, 75, 120, 321, 6, 2, 0, 0, ";", "#X", 0, 36, 99, 232, 1, 4, 0, 0, ";", "#X", 192, 63, 118, 386, 1, 4, 0, 0, ";", "#X", 193, 74, 120, 305, 6, 2, 0, 0, ";", "#X", 193, 72, 118, 1839, 6, 2, 0, 0, ";", "#X", 0, 67, 117, 361, 1, 4, 0, 0, ";", "#X", 385, 41, 113, 1575, 1, 4, 0, 0, ";", "#X", 0, 53, 121, 1543, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 1109, 1, 4, 0, 0, ";", "#X", 386, 63, 117, 723, 1, 4, 0, 0, ";", "#X", 386, 65, 119, 425, 1, 4, 0, 0, ";", "#X", 385, 72, 119, 112, 1, 4, 0, 0, ";", "#X", 386, 73, 122, 40, 6, 2, 0, 0, ";", "#X", 0, 74, 123, 305, 6, 2, 0, 0, ";", "#X", 0, 46, 121, 8449, 1, 4, 0, 0, ";", "#X", 0, 58, 119, 457, 1, 4, 0, 0, ";", "#X", 0, 62, 122, 851, 1, 4, 0, 0, ";", "#X", 385, 74, 122, 819, 6, 2, 0, 0, ";", "#X", 0, 53, 113, 1213, 1, 4, 0, 0, ";", "#X", 386, 58, 118, 1943, 1, 4, 0, 0, ";", "#X", 385, 72, 120, 185, 6, 2, 0, 0, ";", "#X", 0, 62, 120, 1141, 1, 4, 0, 0, ";", "#X", 193, 70, 120, 169, 6, 2, 0, 0, ";", "#X", 193, 72, 118, 257, 6, 2, 0, 0, ";", "#X", 0, 67, 120, 1614, 1, 4, 0, 0, ";", "#X", 0, 79, 116, 1614, 1, 4, 0, 0, ";", "#X", 193, 74, 118, 232, 6, 2, 0, 0, ";", "#X", 192, 53, 116, 434, 1, 4, 0, 0, ";", "#X", 386, 65, 119, 755, 1, 4, 0, 0, ";", "#X", 0, 77, 118, 731, 1, 4, 0, 0, ";", "#X", 385, 77, 123, 306, 6, 2, 0, 0, ";", "#X", 0, 53, 112, 346, 1, 4, 0, 0, ";", "#X", 386, 80, 122, 56, 6, 2, 0, 0, ";", "#X", 0, 81, 122, 538, 6, 2, 0, 0, ";", "#X", 0, 43, 120, 3100, 1, 4, 0, 0, ";", "#X", 0, 58, 122, 450, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 908, 1, 4, 0, 0, ";", "#X", 385, 55, 117, 1197, 1, 4, 0, 0, ";", "#X", 193, 79, 120, 2153, 6, 2, 0, 0, ";", "#X", 193, 58, 121, 1863, 1, 4, 0, 0, ";", "#X", 386, 62, 120, 1293, 1, 4, 0, 0, ";", "#X", 385, 69, 117, 410, 1, 4, 0, 0, ";", "#X", 0, 81, 116, 1615, 1, 4, 0, 0, ";", "#X", 386, 55, 121, 417, 1, 4, 0, 0, ";", "#X", 385, 67, 120, 2386, 1, 4, 0, 0, ";", "#X", 0, 79, 118, 731, 1, 4, 0, 0, ";", "#X", 386, 78, 122, 160, 6, 2, 0, 0, ";", "#X", 0, 55, 117, 345, 1, 4, 0, 0, ";", "#X", 192, 79, 122, 193, 6, 2, 0, 0, ";", "#X", 193, 82, 123, 322, 6, 2, 0, 0, ";", "#X", 0, 48, 123, 1390, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 450, 1, 4, 0, 0, ";", "#X", 0, 63, 122, 474, 1, 4, 0, 0, ";", "#X", 386, 82, 122, 177, 6, 2, 0, 0, ";", "#X", 0, 55, 117, 747, 1, 4, 0, 0, ";", "#X", 193, 82, 122, 755, 6, 2, 0, 0, ";", "#X", 192, 60, 118, 490, 1, 4, 0, 0, ";", "#X", 386, 47, 122, 241, 1, 4, 0, 0, ";", "#X", 0, 55, 119, 353, 1, 4, 0, 0, ";", "#X", 0, 63, 121, 249, 1, 4, 0, 0, ";", "#X", 193, 81, 120, 72, 6, 2, 0, 0, ";", "#X", 0, 82, 119, 570, 6, 2, 0, 0, ";", "#X", 192, 46, 123, 16651, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 370, 1, 4, 0, 0, ";", "#X", 0, 63, 122, 458, 1, 4, 0, 0, ";", "#X", 193, 67, 18, 619, 1, 4, 0, 0, ";", "#X", 193, 79, 123, 345, 6, 2, 0, 0, ";", "#X", 0, 55, 117, 442, 1, 4, 0, 0, ";", "#X", 386, 74, 123, 514, 6, 2, 0, 0, ";", "#X", 0, 75, 123, 96, 6, 2, 0, 0, ";", "#X", 0, 45, 123, 779, 1, 4, 0, 0, ";", "#X", 0, 57, 123, 369, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 538, 1, 4, 0, 0, ";", "#X", 385, 72, 123, 1960, 6, 2, 0, 0, ";", "#X", 0, 55, 118, 386, 1, 4, 0, 0, ";", "#X", 386, 44, 123, 1502, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 385, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 578, 1, 4, 0, 0, ";", "#X", 385, 56, 120, 346, 1, 4, 0, 0, ";", "#X", 378, 35, 111, 48, 10, 13, 0, 0, ";", "#X", 0, 45, 111, 80, 10, 13, 0, 0, ";", "#X", 8, 60, 121, 771, 1, 4, 0, 0, ";", "#X", 0, 63, 120, 490, 1, 4, 0, 0, ";", "#X", 184, 35, 113, 49, 10, 13, 0, 0, ";", "#X", 0, 45, 113, 73, 10, 13, 0, 0, ";", "#X", 193, 35, 114, 48, 10, 13, 0, 0, ";", "#X", 0, 45, 114, 81, 10, 13, 0, 0, ";", "#X", 8, 56, 116, 362, 1, 4, 0, 0, ";", "#X", 185, 35, 115, 88, 10, 13, 0, 0, ";", "#X", 0, 45, 115, 80, 10, 13, 0, 0, ";", "#X", 193, 35, 116, 88, 10, 13, 0, 0, ";", "#X", 0, 45, 116, 80, 10, 13, 0, 0, ";", "#X", 8, 43, 122, 803, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 393, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 658, 1, 4, 0, 0, ";", "#X", 185, 35, 117, 72, 10, 13, 0, 0, ";", "#X", 0, 45, 117, 72, 10, 13, 0, 0, ";", "#X", 192, 35, 118, 81, 10, 13, 0, 0, ";", "#X", 0, 45, 118, 81, 10, 13, 0, 0, ";", "#X", 8, 55, 113, 273, 1, 4, 0, 0, ";", "#X", 185, 35, 119, 80, 10, 13, 0, 0, ";", "#X", 0, 45, 119, 80, 10, 13, 0, 0, ";", "#X", 193, 35, 121, 80, 10, 13, 0, 0, ";", "#X", 0, 43, 121, 80, 10, 13, 0, 0, ";", "#X", 8, 41, 122, 763, 1, 4, 0, 0, ";", "#X", 0, 56, 123, 418, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 546, 1, 4, 0, 0, ";", "#X", 185, 35, 122, 80, 10, 13, 0, 0, ";", "#X", 0, 43, 122, 80, 10, 13, 0, 0, ";", "#X", 192, 35, 123, 81, 10, 13, 0, 0, ";", "#X", 0, 43, 123, 73, 10, 13, 0, 0, ";", "#X", 8, 53, 117, 362, 1, 4, 0, 0, ";", "#X", 185, 35, 123, 97, 10, 13, 0, 0, ";", "#X", 0, 43, 123, 97, 10, 13, 0, 0, ";", "#X", 193, 35, 124, 1036, 10, 13, 0, 0, ";", "#X", 0, 49, 124, 6554, 10, 13, 0, 0, ";", "#X", 8, 78, 123, 64, 6, 2, 0, 0, ";", "#X", 0, 79, 123, 2297, 6, 2, 0, 0, ";", "#X", 0, 39, 123, 2353, 1, 4, 0, 0, ";", "#X", 0, 51, 122, 2265, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 466, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 498, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 450, 1, 4, 0, 0, ";", "#X", 0, 75, 80, 2394, 3, 6, 0, 0, ";", "#X", 0, 82, 92, 3108, 3, 6, 0, 0, ";", "#X", 48, 39, 125, 988, 2, 5, 0, 0, ";", "#X", 329, 51, 120, 185, 10, 13, 0, 0, ";", "#X", 8, 55, 93, 458, 1, 4, 0, 0, ";", "#X", 378, 40, 124, 1261, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 265, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 185, 10, 13, 0, 0, ";", "#X", 8, 58, 123, 474, 1, 4, 0, 0, ";", "#X", 0, 63, 122, 506, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 402, 1, 4, 0, 0, ";", "#X", 378, 35, 117, 120, 10, 13, 0, 0, ";", "#X", 0, 51, 120, 104, 10, 13, 0, 0, ";", "#X", 8, 55, 117, 449, 1, 4, 0, 0, ";", "#X", 48, 39, 125, 120, 2, 5, 0, 0, ";", "#X", 329, 35, 123, 1237, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 185, 10, 13, 0, 0, ";", "#X", 8, 58, 122, 450, 1, 4, 0, 0, ";", "#X", 0, 63, 121, 603, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 378, 1, 4, 0, 0, ";", "#X", 48, 39, 125, 771, 2, 5, 0, 0, ";", "#X", 330, 51, 117, 80, 10, 13, 0, 0, ";", "#X", 8, 55, 118, 313, 1, 4, 0, 0, ";", "#X", 377, 40, 124, 1173, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 209, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 185, 10, 13, 0, 0, ";", "#X", 8, 77, 123, 426, 6, 2, 0, 0, ";", "#X", 0, 38, 122, 755, 1, 4, 0, 0, ";", "#X", 0, 50, 123, 659, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 386, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 346, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 811, 1, 4, 0, 0, ";", "#X", 0, 74, 101, 771, 3, 6, 0, 0, ";", "#X", 48, 34, 125, 796, 2, 5, 0, 0, ";", "#X", 330, 51, 118, 136, 10, 13, 0, 0, ";", "#X", 8, 79, 122, 225, 6, 2, 0, 0, ";", "#X", 0, 53, 117, 329, 1, 4, 0, 0, ";", "#X", 193, 80, 121, 208, 6, 2, 0, 0, ";", "#X", 184, 35, 124, 884, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 113, 10, 13, 0, 0, ";", "#X", 8, 79, 122, 2289, 6, 2, 0, 0, ";", "#X", 0, 36, 123, 2554, 1, 4, 0, 0, ";", "#X", 0, 48, 123, 2643, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 257, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 450, 1, 4, 0, 0, ";", "#X", 0, 72, 91, 5848, 3, 6, 0, 0, ";", "#X", 0, 75, 80, 3085, 3, 6, 0, 0, ";", "#X", 0, 79, 69, 3069, 3, 6, 0, 0, ";", "#X", 0, 84, 91, 6233, 3, 6, 0, 0, ";", "#X", 48, 36, 125, 868, 2, 5, 0, 0, ";", "#X", 330, 51, 119, 80, 10, 13, 0, 0, ";", "#X", 8, 60, 116, 450, 1, 4, 0, 0, ";", "#X", 377, 40, 124, 1189, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 225, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 185, 10, 13, 0, 0, ";", "#X", 8, 63, 121, 651, 1, 4, 0, 0, ";", "#X", 378, 35, 121, 72, 10, 13, 0, 0, ";", "#X", 0, 51, 120, 136, 10, 13, 0, 0, ";", "#X", 8, 67, 117, 410, 1, 4, 0, 0, ";", "#X", 48, 36, 125, 129, 2, 5, 0, 0, ";", "#X", 329, 35, 124, 908, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 129, 10, 13, 0, 0, ";", "#X", 8, 62, 119, 402, 1, 4, 0, 0, ";", "#X", 0, 74, 118, 523, 1, 4, 0, 0, ";", "#X", 0, 77, 100, 691, 3, 6, 0, 0, ";", "#X", 49, 36, 125, 803, 2, 5, 0, 0, ";", "#X", 329, 51, 120, 104, 10, 13, 0, 0, ";", "#X", 8, 63, 119, 1060, 1, 4, 0, 0, ";", "#X", 377, 40, 124, 1181, 10, 13, 0, 0, ";", "#X", 0, 42, 124, 249, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 121, 10, 13, 0, 0, ";", "#X", 9, 60, 116, 931, 1, 4, 0, 0, ";", "#X", 0, 72, 122, 1204, 1, 4, 0, 0, ";", "#X", 0, 82, 95, 755, 3, 6, 0, 0, ";", "#X", 48, 31, 125, 409, 2, 5, 0, 0, ";", "#X", 329, 35, 116, 72, 10, 13, 0, 0, ";", "#X", 0, 51, 113, 137, 10, 13, 0, 0, ";", "#X", 8, 79, 123, 337, 6, 2, 0, 0, ";", "#X", 0, 67, 114, 321, 1, 4, 0, 0, ";", "#X", 48, 30, 125, 434, 2, 5, 0, 0, ";", "#X", 330, 35, 124, 891, 10, 13, 0, 0, ";", "#X", 0, 49, 122, 1542, 10, 13, 0, 0, ";", "#X", 8, 79, 123, 120, 6, 2, 0, 0, ";", "#X", 0, 80, 119, 538, 6, 2, 0, 0, ";", "#X", 0, 41, 120, 1204, 1, 4, 0, 0, ";", "#X", 0, 53, 123, 980, 1, 4, 0, 0, ";", "#X", 0, 65, 122, 578, 1, 4, 0, 0, ";", "#X", 0, 68, 123, 401, 1, 4, 0, 0, ";", "#X", 0, 77, 98, 883, 3, 6, 0, 0, ";", "#X", 0, 80, 96, 3172, 3, 6, 0, 0, ";", "#X", 48, 29, 125, 1140, 2, 5, 0, 0, ";", "#X", 329, 51, 118, 105, 10, 13, 0, 0, ";", "#X", 8, 60, 120, 426, 1, 4, 0, 0, ";", "#X", 193, 79, 123, 265, 6, 2, 0, 0, ";", "#X", 185, 40, 124, 1052, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 233, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 144, 10, 13, 0, 0, ";", "#X", 8, 65, 123, 305, 1, 4, 0, 0, ";", "#X", 0, 68, 121, 650, 1, 4, 0, 0, ";", "#X", 0, 72, 120, 1341, 1, 4, 0, 0, ";", "#X", 0, 76, 96, 698, 3, 6, 0, 0, ";", "#X", 192, 79, 123, 225, 6, 2, 0, 0, ";", "#X", 185, 35, 118, 89, 10, 13, 0, 0, ";", "#X", 0, 49, 120, 771, 10, 13, 0, 0, ";", "#X", 8, 77, 122, 225, 6, 2, 0, 0, ";", "#X", 0, 40, 121, 410, 1, 4, 0, 0, ";", "#X", 0, 52, 115, 217, 1, 4, 0, 0, ";", "#X", 0, 60, 112, 651, 1, 4, 0, 0, ";", "#X", 0, 64, 122, 257, 1, 4, 0, 0, ";", "#X", 48, 40, 125, 434, 2, 5, 0, 0, ";", "#X", 330, 35, 123, 779, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 6554, 10, 13, 0, 0, ";", "#X", 8, 77, 123, 1421, 6, 2, 0, 0, ";", "#X", 0, 39, 122, 859, 1, 4, 0, 0, ";", "#X", 0, 51, 123, 674, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 442, 1, 4, 0, 0, ";", "#X", 0, 68, 123, 530, 1, 4, 0, 0, ";", "#X", 0, 75, 92, 835, 3, 6, 0, 0, ";", "#X", 48, 39, 125, 811, 2, 5, 0, 0, ";", "#X", 329, 51, 119, 89, 10, 13, 0, 0, ";", "#X", 8, 60, 95, 426, 1, 4, 0, 0, ";", "#X", 378, 40, 124, 1213, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 233, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 160, 10, 13, 0, 0, ";", "#X", 8, 38, 122, 731, 1, 4, 0, 0, ";", "#X", 0, 50, 123, 321, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 490, 1, 4, 0, 0, ";", "#X", 0, 68, 123, 377, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 393, 1, 4, 0, 0, ";", "#X", 0, 74, 99, 763, 3, 6, 0, 0, ";", "#X", 48, 38, 125, 490, 2, 5, 0, 0, ";", "#X", 329, 35, 117, 81, 10, 13, 0, 0, ";", "#X", 0, 51, 120, 105, 10, 13, 0, 0, ";", "#X", 8, 60, 110, 314, 1, 4, 0, 0, ";", "#X", 193, 70, 123, 177, 6, 2, 0, 0, ";", "#X", 48, 36, 119, 290, 2, 5, 0, 0, ";", "#X", 137, 35, 123, 883, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 128, 10, 13, 0, 0, ";", "#X", 8, 70, 123, 329, 6, 2, 0, 0, ";", "#X", 0, 34, 121, 2723, 1, 4, 0, 0, ";", "#X", 0, 46, 123, 19775, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 466, 1, 4, 0, 0, ";", "#X", 0, 66, 18, 241, 1, 4, 0, 0, ";", "#X", 0, 70, 122, 1221, 1, 4, 0, 0, ";", "#X", 0, 70, 92, 6128, 3, 6, 0, 0, ";", "#X", 0, 74, 86, 64, 3, 6, 0, 0, ";", "#X", 0, 77, 74, 3157, 3, 6, 0, 0, ";", "#X", 0, 82, 88, 6201, 3, 6, 0, 0, ";", "#X", 48, 34, 125, 988, 2, 5, 0, 0, ";", "#X", 329, 51, 119, 89, 10, 13, 0, 0, ";", "#X", 8, 77, 122, 233, 6, 2, 0, 0, ";", "#X", 0, 58, 107, 442, 1, 4, 0, 0, ";", "#X", 378, 40, 124, 843, 10, 13, 0, 0, ";", "#X", 0, 42, 121, 177, 10, 13, 0, 0, ";", "#X", 0, 51, 124, 137, 10, 13, 0, 0, ";", "#X", 8, 77, 123, 361, 6, 2, 0, 0, ";", "#X", 0, 62, 123, 458, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 434, 1, 4, 0, 0, ";", "#X", 378, 35, 122, 72, 10, 13, 0, 0, ";", "#X", 0, 51, 120, 120, 10, 13, 0, 0, ";", "#X", 8, 79, 123, 224, 6, 2, 0, 0, ";", "#X", 0, 58, 105, 409, 1, 4, 0, 0, ";", "#X", 48, 34, 121, 185, 2, 5, 0, 0, ";", "#X", 329, 35, 124, 860, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 113, 10, 13, 0, 0, ";", "#X", 8, 79, 123, 418, 6, 2, 0, 0, ";", "#X", 0, 62, 122, 474, 1, 4, 0, 0, ";", "#X", 0, 65, 122, 498, 1, 4, 0, 0, ";", "#X", 0, 70, 120, 562, 1, 4, 0, 0, ";", "#X", 48, 34, 125, 233, 2, 5, 0, 0, ";", "#X", 330, 40, 124, 112, 10, 13, 0, 0, ";", "#X", 0, 51, 120, 72, 10, 13, 0, 0, ";", "#X", 8, 80, 122, 297, 6, 2, 0, 0, ";", "#X", 0, 58, 117, 1341, 1, 4, 0, 0, ";", "#X", 48, 34, 125, 305, 2, 5, 0, 0, ";", "#X", 329, 40, 124, 105, 10, 13, 0, 0, ";", "#X", 0, 42, 121, 153, 10, 13, 0, 0, ";", "#X", 8, 80, 122, 402, 6, 2, 0, 0, ";", "#X", 0, 62, 122, 313, 1, 4, 0, 0, ";", "#X", 0, 65, 122, 330, 1, 4, 0, 0, ";", "#X", 0, 70, 117, 201, 1, 4, 0, 0, ";", "#X", 0, 80, 90, 795, 3, 6, 0, 0, ";", "#X", 48, 34, 125, 193, 2, 5, 0, 0, ";", "#X", 137, 43, 123, 177, 10, 13, 0, 0, ";", "#X", 56, 36, 125, 193, 2, 5, 0, 0, ";", "#X", 137, 35, 124, 128, 10, 13, 0, 0, ";", "#X", 0, 45, 122, 128, 10, 13, 0, 0, ";", "#X", 8, 82, 122, 409, 6, 2, 0, 0, ";", "#X", 48, 38, 125, 377, 2, 5, 0, 0, ";", "#X", 329, 35, 123, 908, 10, 13, 0, 0, ";", "#X", 0, 49, 124, 5992, 10, 13, 0, 0, ";", "#X", 8, 80, 119, 362, 6, 2, 0, 0, ";", "#X", 0, 39, 121, 1567, 1, 4, 0, 0, ";", "#X", 0, 51, 122, 1406, 1, 4, 0, 0, ";", "#X", 0, 63, 122, 1133, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 362, 1, 4, 0, 0, ";", "#X", 0, 75, 90, 378, 3, 6, 0, 0, ";", "#X", 0, 79, 92, 1502, 3, 6, 0, 0, ";", "#X", 32, 39, 125, 314, 2, 5, 0, 0, ";", "#X", 346, 51, 122, 88, 10, 13, 0, 0, ";", "#X", 8, 79, 118, 691, 6, 2, 0, 0, ";", "#X", 0, 58, 102, 1012, 1, 4, 0, 0, ";", "#X", 0, 75, 18, 1084, 3, 6, 0, 0, ";", "#X", 32, 39, 125, 177, 2, 5, 0, 0, ";", "#X", 345, 40, 124, 1237, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 201, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 129, 10, 13, 0, 0, ";", "#X", 8, 67, 117, 474, 1, 4, 0, 0, ";", "#X", 32, 39, 125, 249, 2, 5, 0, 0, ";", "#X", 346, 35, 120, 112, 10, 13, 0, 0, ";", "#X", 0, 51, 119, 128, 10, 13, 0, 0, ";", "#X", 8, 77, 123, 193, 6, 2, 0, 0, ";", "#X", 0, 65, 114, 185, 1, 4, 0, 0, ";", "#X", 32, 39, 125, 378, 2, 5, 0, 0, ";", "#X", 161, 75, 122, 152, 6, 2, 0, 0, ";", "#X", 0, 63, 115, 241, 1, 4, 0, 0, ";", "#X", 184, 35, 124, 852, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 145, 10, 13, 0, 0, ";", "#X", 8, 77, 119, 1189, 6, 2, 0, 0, ";", "#X", 0, 38, 119, 1575, 1, 4, 0, 0, ";", "#X", 0, 50, 119, 1430, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 241, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 498, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 482, 1, 4, 0, 0, ";", "#X", 0, 74, 98, 1551, 3, 6, 0, 0, ";", "#X", 0, 77, 73, 1631, 3, 6, 0, 0, ";", "#X", 33, 38, 125, 200, 2, 5, 0, 0, ";", "#X", 345, 51, 117, 72, 10, 13, 0, 0, ";", "#X", 8, 58, 93, 940, 1, 4, 0, 0, ";", "#X", 32, 38, 125, 225, 2, 5, 0, 0, ";", "#X", 346, 40, 124, 1269, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 192, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 152, 10, 13, 0, 0, ";", "#X", 8, 62, 117, 321, 1, 4, 0, 0, ";", "#X", 0, 65, 117, 473, 1, 4, 0, 0, ";", "#X", 32, 38, 125, 200, 2, 5, 0, 0, ";", "#X", 345, 35, 122, 145, 10, 13, 0, 0, ";", "#X", 0, 51, 115, 121, 10, 13, 0, 0, ";", "#X", 8, 75, 123, 241, 6, 2, 0, 0, ";", "#X", 0, 63, 107, 217, 1, 4, 0, 0, ";", "#X", 32, 38, 125, 386, 2, 5, 0, 0, ";", "#X", 161, 74, 116, 193, 6, 2, 0, 0, ";", "#X", 0, 62, 115, 193, 1, 4, 0, 0, ";", "#X", 185, 35, 124, 875, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 152, 10, 13, 0, 0, ";", "#X", 8, 75, 119, 1204, 6, 2, 0, 0, ";", "#X", 0, 36, 119, 1558, 1, 4, 0, 0, ";", "#X", 0, 48, 121, 1550, 1, 4, 0, 0, ";", "#X", 0, 60, 122, 465, 1, 4, 0, 0, ";", "#X", 0, 63, 118, 474, 1, 4, 0, 0, ";", "#X", 0, 72, 91, 1598, 3, 6, 0, 0, ";", "#X", 0, 75, 83, 3148, 3, 6, 0, 0, ";", "#X", 48, 36, 125, 273, 2, 5, 0, 0, ";", "#X", 329, 51, 119, 105, 10, 13, 0, 0, ";", "#X", 8, 55, 63, 450, 1, 4, 0, 0, ";", "#X", 48, 36, 125, 257, 2, 5, 0, 0, ";", "#X", 330, 40, 124, 594, 10, 13, 0, 0, ";", "#X", 0, 42, 121, 136, 10, 13, 0, 0, ";", "#X", 0, 51, 124, 112, 10, 13, 0, 0, ";", "#X", 8, 60, 117, 377, 1, 4, 0, 0, ";", "#X", 0, 63, 117, 450, 1, 4, 0, 0, ";", "#X", 48, 36, 125, 361, 2, 5, 0, 0, ";", "#X", 329, 35, 121, 105, 10, 13, 0, 0, ";", "#X", 0, 42, 120, 97, 10, 13, 0, 0, ";", "#X", 8, 70, 121, 113, 6, 2, 0, 0, ";", "#X", 0, 55, 112, 362, 1, 4, 0, 0, ";", "#X", 48, 31, 125, 378, 2, 5, 0, 0, ";", "#X", 145, 70, 122, 169, 6, 2, 0, 0, ";", "#X", 185, 35, 124, 1092, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 5100, 10, 13, 0, 0, ";", "#X", 8, 71, 122, 337, 6, 2, 0, 0, ";", "#X", 0, 44, 122, 1454, 1, 4, 0, 0, ";", "#X", 0, 59, 122, 466, 1, 4, 0, 0, ";", "#X", 0, 63, 117, 458, 1, 4, 0, 0, ";", "#X", 0, 68, 67, 1662, 3, 6, 0, 0, ";", "#X", 0, 71, 92, 1293, 3, 6, 0, 0, ";", "#X", 48, 32, 125, 1582, 2, 5, 0, 0, ";", "#X", 337, 73, 119, 249, 6, 2, 0, 0, ";", "#X", 0, 56, 107, 418, 1, 4, 0, 0, ";", "#X", 193, 71, 120, 249, 6, 2, 0, 0, ";", "#X", 193, 73, 119, 169, 6, 2, 0, 0, ";", "#X", 0, 59, 121, 747, 1, 4, 0, 0, ";", "#X", 0, 63, 117, 843, 1, 4, 0, 0, ";", "#X", 193, 71, 119, 136, 6, 2, 0, 0, ";", "#X", 192, 73, 119, 137, 6, 2, 0, 0, ";", "#X", 0, 56, 109, 314, 1, 4, 0, 0, ";", "#X", 193, 71, 121, 137, 6, 2, 0, 0, ";", "#X", 185, 35, 124, 4209, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 7807, 10, 13, 0, 0, ";", "#X", 8, 70, 120, 1735, 6, 2, 0, 0, ";", "#X", 0, 39, 121, 4586, 1, 4, 0, 0, ";", "#X", 0, 51, 117, 4602, 1, 4, 0, 0, ";", "#X", 0, 63, 63, 1454, 3, 6, 0, 0, ";", "#X", 0, 70, 77, 1534, 3, 6, 0, 0, ";", "#X", 48, 27, 125, 4113, 2, 5, 0, 0, ";", "#X", 0, 39, 125, 4097, 2, 5, 0, 0, ";", "#X", 338, 63, 114, 4120, 1, 4, 0, 0, ";", "#X", 385, 67, 117, 361, 1, 4, 0, 0, ";", "#X", 386, 70, 120, 377, 1, 4, 0, 0, ";", "#X", 385, 68, 121, 474, 1, 4, 0, 0, ";", "#X", 0, 72, 116, 402, 1, 4, 0, 0, ";", "#X", 0, 68, 76, 795, 3, 6, 0, 0, ";", "#X", 0, 72, 60, 803, 3, 6, 0, 0, ";", "#X", 0, 75, 18, 747, 3, 6, 0, 0, ";", "#X", 0, 80, 51, 763, 3, 6, 0, 0, ";", "#X", 386, 75, 112, 417, 1, 4, 0, 0, ";", "#X", 385, 67, 116, 442, 1, 4, 0, 0, ";", "#X", 0, 70, 118, 482, 1, 4, 0, 0, ";", "#X", 0, 67, 96, 860, 3, 6, 0, 0, ";", "#X", 0, 70, 90, 819, 3, 6, 0, 0, ";", "#X", 386, 75, 116, 425, 1, 4, 0, 0, ";", "#X", 385, 66, 108, 466, 1, 4, 0, 0, ";", "#X", 0, 69, 118, 394, 1, 4, 0, 0, ";", "#X", 0, 66, 63, 804, 3, 6, 0, 0, ";", "#X", 0, 69, 63, 530, 3, 6, 0, 0, ";", "#X", 378, 42, 121, 1502, 10, 13, 0, 0, ";", "#X", 8, 75, 119, 401, 1, 4, 0, 0, ";", "#X", 377, 40, 122, 193, 10, 13, 0, 0, ";", "#X", 8, 65, 119, 611, 1, 4, 0, 0, ";", "#X", 0, 68, 120, 498, 1, 4, 0, 0, ";", "#X", 0, 65, 97, 739, 3, 6, 0, 0, ";", "#X", 0, 68, 88, 571, 3, 6, 0, 0, ";", "#X", 185, 43, 119, 185, 10, 13, 0, 0, ";", "#X", 193, 45, 117, 313, 10, 13, 0, 0, ";", "#X", 8, 75, 121, 281, 1, 4, 0, 0, ";", "#X", 377, 35, 124, 731, 10, 13, 0, 0, ";", "#X", 0, 49, 124, 7904, 10, 13, 0, 0, ";", "#X", 8, 34, 121, 2868, 1, 4, 0, 0, ";", "#X", 0, 46, 123, 9237, 1, 4, 0, 0, ";", "#X", 0, 58, 119, 523, 1, 4, 0, 0, ";", "#X", 0, 34, 125, 956, 2, 5, 0, 0, ";", "#X", 386, 53, 115, 1277, 1, 4, 0, 0, ";", "#X", 369, 42, 122, 185, 10, 13, 0, 0, ";", "#X", 9, 40, 124, 1220, 10, 13, 0, 0, ";", "#X", 8, 58, 117, 1951, 1, 4, 0, 0, ";", "#X", 369, 35, 119, 88, 10, 13, 0, 0, ";", "#X", 8, 42, 116, 104, 10, 13, 0, 0, ";", "#X", 8, 62, 115, 1293, 1, 4, 0, 0, ";", "#X", 16, 34, 122, 153, 2, 5, 0, 0, ";", "#X", 362, 34, 124, 1333, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 1277, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 144, 10, 13, 0, 0, ";", "#X", 8, 67, 116, 2731, 1, 4, 0, 0, ";", "#X", 0, 79, 116, 1614, 1, 4, 0, 0, ";", "#X", 377, 42, 114, 105, 10, 13, 0, 0, ";", "#X", 8, 53, 101, 434, 1, 4, 0, 0, ";", "#X", 378, 40, 124, 1245, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 192, 10, 13, 0, 0, ";", "#X", 8, 65, 117, 699, 1, 4, 0, 0, ";", "#X", 0, 77, 118, 731, 1, 4, 0, 0, ";", "#X", 377, 42, 114, 113, 10, 13, 0, 0, ";", "#X", 8, 53, 107, 434, 1, 4, 0, 0, ";", "#X", 378, 34, 125, 907, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 907, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 168, 10, 13, 0, 0, ";", "#X", 8, 34, 123, 2803, 1, 4, 0, 0, ";", "#X", 0, 58, 118, 458, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 450, 1, 4, 0, 0, ";", "#X", 377, 42, 113, 121, 10, 13, 0, 0, ";", "#X", 8, 53, 104, 1245, 1, 4, 0, 0, ";", "#X", 378, 40, 124, 1173, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 160, 10, 13, 0, 0, ";", "#X", 8, 58, 113, 1912, 1, 4, 0, 0, ";", "#X", 377, 34, 125, 153, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 113, 10, 13, 0, 0, ";", "#X", 0, 42, 116, 105, 10, 13, 0, 0, ";", "#X", 8, 62, 116, 892, 1, 4, 0, 0, ";", "#X", 378, 34, 125, 803, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 1237, 10, 13, 0, 0, ";", "#X", 0, 42, 120, 145, 10, 13, 0, 0, ";", "#X", 8, 67, 116, 1614, 1, 4, 0, 0, ";", "#X", 0, 79, 116, 1614, 1, 4, 0, 0, ";", "#X", 377, 42, 115, 121, 10, 13, 0, 0, ";", "#X", 9, 53, 108, 481, 1, 4, 0, 0, ";", "#X", 377, 29, 123, 771, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1197, 10, 13, 0, 0, ";", "#X", 0, 42, 121, 88, 10, 13, 0, 0, ";", "#X", 8, 65, 118, 731, 1, 4, 0, 0, ";", "#X", 0, 77, 118, 731, 1, 4, 0, 0, ";", "#X", 185, 42, 120, 193, 10, 13, 0, 0, ";", "#X", 193, 46, 120, 11156, 10, 13, 0, 0, ";", "#X", 8, 53, 115, 409, 1, 4, 0, 0, ";", "#X", 377, 62, 122, 2707, 5, 3, 0, 0, ";", "#X", 0, 34, 125, 892, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 900, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 14843, 10, 13, 0, 0, ";", "#X", 8, 34, 123, 3093, 1, 4, 0, 0, ";", "#X", 0, 46, 123, 15430, 1, 4, 0, 0, ";", "#X", 0, 58, 122, 329, 1, 4, 0, 0, ";", "#X", 0, 62, 122, 779, 1, 4, 0, 0, ";", "#X", 378, 42, 113, 120, 10, 13, 0, 0, ";", "#X", 8, 53, 113, 1196, 1, 4, 0, 0, ";", "#X", 377, 40, 124, 1181, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 193, 10, 13, 0, 0, ";", "#X", 8, 58, 115, 1952, 1, 4, 0, 0, ";", "#X", 378, 34, 122, 160, 2, 5, 0, 0, ";", "#X", 0, 35, 120, 112, 10, 13, 0, 0, ";", "#X", 0, 42, 117, 136, 10, 13, 0, 0, ";", "#X", 8, 62, 115, 1189, 1, 4, 0, 0, ";", "#X", 377, 34, 125, 1534, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 1229, 10, 13, 0, 0, ";", "#X", 0, 42, 115, 177, 10, 13, 0, 0, ";", "#X", 8, 67, 117, 1607, 1, 4, 0, 0, ";", "#X", 0, 79, 116, 1615, 1, 4, 0, 0, ";", "#X", 378, 42, 114, 120, 10, 13, 0, 0, ";", "#X", 8, 53, 115, 602, 1, 4, 0, 0, ";", "#X", 377, 40, 124, 1133, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 185, 10, 13, 0, 0, ";", "#X", 8, 65, 120, 804, 1, 4, 0, 0, ";", "#X", 0, 77, 118, 731, 1, 4, 0, 0, ";", "#X", 378, 42, 114, 136, 10, 13, 0, 0, ";", "#X", 8, 53, 114, 402, 1, 4, 0, 0, ";", "#X", 16, 58, 123, 281, 5, 3, 0, 0, ";", "#X", 353, 60, 123, 338, 5, 3, 0, 0, ";", "#X", 8, 31, 125, 884, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 876, 10, 13, 0, 0, ";", "#X", 0, 42, 120, 145, 10, 13, 0, 0, ";", "#X", 8, 43, 122, 3101, 1, 4, 0, 0, ";", "#X", 0, 58, 120, 442, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 852, 1, 4, 0, 0, ";", "#X", 346, 62, 123, 1831, 5, 3, 0, 0, ";", "#X", 32, 42, 115, 104, 10, 13, 0, 0, ";", "#X", 8, 55, 116, 1325, 1, 4, 0, 0, ";", "#X", 378, 40, 124, 1212, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 192, 10, 13, 0, 0, ";", "#X", 8, 58, 117, 2016, 1, 4, 0, 0, ";", "#X", 377, 31, 123, 185, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 104, 10, 13, 0, 0, ";", "#X", 0, 42, 116, 137, 10, 13, 0, 0, ";", "#X", 8, 62, 118, 1173, 1, 4, 0, 0, ";", "#X", 378, 31, 124, 1582, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 1237, 10, 13, 0, 0, ";", "#X", 0, 42, 121, 120, 10, 13, 0, 0, ";", "#X", 8, 69, 117, 417, 1, 4, 0, 0, ";", "#X", 0, 81, 116, 1614, 1, 4, 0, 0, ";", "#X", 377, 42, 116, 72, 10, 13, 0, 0, ";", "#X", 8, 55, 117, 1125, 1, 4, 0, 0, ";", "#X", 378, 40, 124, 1180, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 160, 10, 13, 0, 0, ";", "#X", 8, 67, 121, 851, 1, 4, 0, 0, ";", "#X", 0, 79, 118, 731, 1, 4, 0, 0, ";", "#X", 377, 42, 116, 129, 10, 13, 0, 0, ";", "#X", 8, 62, 117, 129, 1, 4, 0, 0, ";", "#X", 8, 62, 122, 338, 5, 3, 0, 0, ";", "#X", 370, 36, 124, 859, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 923, 10, 13, 0, 0, ";", "#X", 0, 42, 120, 152, 10, 13, 0, 0, ";", "#X", 8, 63, 122, 361, 5, 3, 0, 0, ";", "#X", 0, 36, 123, 2899, 1, 4, 0, 0, ";", "#X", 0, 48, 123, 2859, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 353, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 546, 1, 4, 0, 0, ";", "#X", 377, 42, 116, 105, 10, 13, 0, 0, ";", "#X", 8, 60, 119, 1269, 1, 4, 0, 0, ";", "#X", 8, 65, 122, 273, 5, 3, 0, 0, ";", "#X", 185, 63, 123, 386, 5, 3, 0, 0, ";", "#X", 185, 40, 124, 1221, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 185, 10, 13, 0, 0, ";", "#X", 8, 63, 117, 1791, 1, 4, 0, 0, ";", "#X", 193, 62, 122, 217, 5, 3, 0, 0, ";", "#X", 184, 36, 122, 153, 2, 5, 0, 0, ";", "#X", 0, 35, 120, 129, 10, 13, 0, 0, ";", "#X", 0, 42, 117, 129, 10, 13, 0, 0, ";", "#X", 8, 67, 109, 1221, 1, 4, 0, 0, ";", "#X", 33, 60, 122, 1036, 5, 3, 0, 0, ";", "#X", 345, 36, 125, 1149, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 1261, 10, 13, 0, 0, ";", "#X", 0, 42, 120, 128, 10, 13, 0, 0, ";", "#X", 8, 74, 116, 442, 1, 4, 0, 0, ";", "#X", 0, 86, 116, 1614, 1, 4, 0, 0, ";", "#X", 377, 42, 113, 105, 10, 13, 0, 0, ";", "#X", 9, 60, 119, 1204, 1, 4, 0, 0, ";", "#X", 377, 40, 124, 1165, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 169, 10, 13, 0, 0, ";", "#X", 8, 72, 121, 2249, 1, 4, 0, 0, ";", "#X", 0, 84, 118, 731, 1, 4, 0, 0, ";", "#X", 362, 60, 122, 249, 5, 3, 0, 0, ";", "#X", 16, 31, 123, 425, 2, 5, 0, 0, ";", "#X", 0, 42, 118, 112, 10, 13, 0, 0, ";", "#X", 8, 63, 121, 731, 1, 4, 0, 0, ";", "#X", 176, 62, 122, 201, 5, 3, 0, 0, ";", "#X", 201, 36, 125, 1133, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 892, 10, 13, 0, 0, ";", "#X", 0, 42, 120, 153, 10, 13, 0, 0, ";", "#X", 8, 36, 123, 450, 1, 4, 0, 0, ";", "#X", 0, 48, 123, 1510, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 731, 1, 4, 0, 0, ";", "#X", 8, 63, 122, 313, 5, 3, 0, 0, ";", "#X", 346, 65, 122, 281, 5, 3, 0, 0, ";", "#X", 24, 42, 113, 80, 10, 13, 0, 0, ";", "#X", 8, 60, 114, 747, 1, 4, 0, 0, ";", "#X", 192, 36, 99, 233, 1, 4, 0, 0, ";", "#X", 17, 63, 122, 313, 5, 3, 0, 0, ";", "#X", 168, 40, 124, 828, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 129, 10, 13, 0, 0, ";", "#X", 8, 63, 118, 386, 1, 4, 0, 0, ";", "#X", 121, 62, 122, 192, 5, 3, 0, 0, ";", "#X", 257, 31, 123, 217, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 120, 10, 13, 0, 0, ";", "#X", 0, 46, 120, 8867, 10, 13, 0, 0, ";", "#X", 8, 67, 117, 361, 1, 4, 0, 0, ";", "#X", 8, 62, 122, 353, 5, 3, 0, 0, ";", "#X", 177, 30, 120, 240, 2, 5, 0, 0, ";", "#X", 176, 60, 122, 1534, 5, 3, 0, 0, ";", "#X", 16, 29, 125, 763, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 924, 10, 13, 0, 0, ";", "#X", 0, 42, 121, 121, 10, 13, 0, 0, ";", "#X", 8, 41, 113, 1575, 1, 4, 0, 0, ";", "#X", 0, 53, 121, 1542, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 1109, 1, 4, 0, 0, ";", "#X", 378, 40, 124, 160, 10, 13, 0, 0, ";", "#X", 8, 63, 117, 723, 1, 4, 0, 0, ";", "#X", 377, 29, 125, 771, 2, 5, 0, 0, ";", "#X", 0, 42, 116, 193, 10, 13, 0, 0, ";", "#X", 0, 43, 124, 161, 10, 13, 0, 0, ";", "#X", 8, 65, 119, 426, 1, 4, 0, 0, ";", "#X", 185, 45, 122, 281, 10, 13, 0, 0, ";", "#X", 193, 35, 123, 217, 10, 13, 0, 0, ";", "#X", 8, 72, 119, 112, 1, 4, 0, 0, ";", "#X", 377, 34, 125, 972, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 868, 10, 13, 0, 0, ";", "#X", 0, 49, 122, 7326, 10, 13, 0, 0, ";", "#X", 8, 46, 121, 8450, 1, 4, 0, 0, ";", "#X", 0, 58, 119, 458, 1, 4, 0, 0, ";", "#X", 0, 62, 122, 852, 1, 4, 0, 0, ";", "#X", 9, 62, 122, 1180, 5, 3, 0, 0, ";", "#X", 369, 42, 111, 193, 10, 13, 0, 0, ";", "#X", 8, 53, 113, 1213, 1, 4, 0, 0, ";", "#X", 378, 40, 123, 1220, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 160, 10, 13, 0, 0, ";", "#X", 8, 58, 118, 1943, 1, 4, 0, 0, ";", "#X", 377, 34, 121, 289, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 145, 10, 13, 0, 0, ";", "#X", 0, 42, 113, 113, 10, 13, 0, 0, ";", "#X", 8, 60, 122, 185, 5, 3, 0, 0, ";", "#X", 0, 62, 120, 1141, 1, 4, 0, 0, ";", "#X", 185, 58, 122, 144, 5, 3, 0, 0, ";", "#X", 185, 60, 122, 216, 5, 3, 0, 0, ";", "#X", 8, 34, 125, 1502, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 1269, 10, 13, 0, 0, ";", "#X", 0, 42, 120, 144, 10, 13, 0, 0, ";", "#X", 8, 67, 120, 1614, 1, 4, 0, 0, ";", "#X", 0, 79, 116, 1614, 1, 4, 0, 0, ";", "#X", 208, 62, 122, 137, 5, 3, 0, 0, ";", "#X", 169, 42, 115, 129, 10, 13, 0, 0, ";", "#X", 8, 53, 116, 434, 1, 4, 0, 0, ";", "#X", 378, 40, 124, 1196, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 160, 10, 13, 0, 0, ";", "#X", 8, 65, 119, 755, 1, 4, 0, 0, ";", "#X", 0, 77, 118, 731, 1, 4, 0, 0, ";", "#X", 369, 65, 122, 129, 5, 3, 0, 0, ";", "#X", 8, 42, 116, 113, 10, 13, 0, 0, ";", "#X", 8, 53, 112, 346, 1, 4, 0, 0, ";", "#X", 370, 67, 122, 666, 5, 3, 0, 0, ";", "#X", 8, 31, 125, 747, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 875, 10, 13, 0, 0, ";", "#X", 0, 42, 121, 152, 10, 13, 0, 0, ";", "#X", 8, 43, 120, 3100, 1, 4, 0, 0, ";", "#X", 0, 58, 122, 450, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 907, 1, 4, 0, 0, ";", "#X", 88, 60, 109, 8, 1, 4, 0, 0, ";", "#X", 289, 42, 116, 121, 10, 13, 0, 0, ";", "#X", 8, 55, 117, 1197, 1, 4, 0, 0, ";", "#X", 265, 65, 122, 113, 5, 3, 0, 0, ";", "#X", 81, 67, 122, 1494, 5, 3, 0, 0, ";", "#X", 32, 34, 124, 410, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1253, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 161, 10, 13, 0, 0, ";", "#X", 8, 58, 121, 1863, 1, 4, 0, 0, ";", "#X", 377, 38, 122, 402, 2, 5, 0, 0, ";", "#X", 0, 35, 118, 145, 10, 13, 0, 0, ";", "#X", 0, 42, 115, 137, 10, 13, 0, 0, ";", "#X", 8, 62, 120, 1294, 1, 4, 0, 0, ";", "#X", 378, 43, 125, 1149, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 996, 10, 13, 0, 0, ";", "#X", 0, 42, 121, 145, 10, 13, 0, 0, ";", "#X", 8, 69, 117, 410, 1, 4, 0, 0, ";", "#X", 0, 81, 116, 1614, 1, 4, 0, 0, ";", "#X", 378, 42, 113, 104, 10, 13, 0, 0, ";", "#X", 8, 55, 121, 417, 1, 4, 0, 0, ";", "#X", 377, 40, 124, 1205, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 161, 10, 13, 0, 0, ";", "#X", 8, 67, 120, 2386, 1, 4, 0, 0, ";", "#X", 0, 79, 118, 731, 1, 4, 0, 0, ";", "#X", 329, 65, 122, 265, 5, 3, 0, 0, ";", "#X", 49, 38, 125, 465, 2, 5, 0, 0, ";", "#X", 0, 35, 120, 136, 10, 13, 0, 0, ";", "#X", 0, 43, 121, 120, 10, 13, 0, 0, ";", "#X", 8, 55, 117, 345, 1, 4, 0, 0, ";", "#X", 144, 67, 122, 217, 5, 3, 0, 0, ";", "#X", 233, 36, 124, 1165, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 876, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 1542, 10, 13, 0, 0, ";", "#X", 8, 48, 123, 1390, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 450, 1, 4, 0, 0, ";", "#X", 0, 63, 122, 474, 1, 4, 0, 0, ";", "#X", 40, 70, 122, 314, 5, 3, 0, 0, ";", "#X", 338, 46, 120, 771, 10, 13, 0, 0, ";", "#X", 8, 55, 117, 747, 1, 4, 0, 0, ";", "#X", 72, 70, 122, 185, 5, 3, 0, 0, ";", "#X", 305, 40, 124, 1317, 10, 13, 0, 0, ";", "#X", 0, 46, 121, 1542, 10, 13, 0, 0, ";", "#X", 8, 60, 118, 490, 1, 4, 0, 0, ";", "#X", 40, 70, 122, 185, 5, 3, 0, 0, ";", "#X", 257, 70, 122, 201, 5, 3, 0, 0, ";", "#X", 81, 35, 125, 369, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 144, 10, 13, 0, 0, ";", "#X", 0, 49, 124, 1156, 10, 13, 0, 0, ";", "#X", 8, 47, 122, 241, 1, 4, 0, 0, ";", "#X", 0, 55, 119, 353, 1, 4, 0, 0, ";", "#X", 0, 63, 121, 249, 1, 4, 0, 0, ";", "#X", 225, 70, 122, 715, 5, 3, 0, 0, ";", "#X", 152, 34, 125, 787, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 338, 10, 13, 0, 0, ";", "#X", 0, 49, 124, 771, 10, 13, 0, 0, ";", "#X", 8, 46, 123, 16651, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 370, 1, 4, 0, 0, ";", "#X", 0, 63, 122, 458, 1, 4, 0, 0, ";", "#X", 193, 67, 18, 619, 1, 4, 0, 0, ";", "#X", 185, 46, 119, 1156, 10, 13, 0, 0, ";", "#X", 8, 55, 117, 442, 1, 4, 0, 0, ";", "#X", 120, 67, 122, 257, 5, 3, 0, 0, ";", "#X", 65, 35, 120, 514, 10, 13, 0, 0, ";", "#X", 192, 33, 125, 755, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1374, 10, 13, 0, 0, ";", "#X", 0, 49, 124, 2314, 10, 13, 0, 0, ";", "#X", 8, 45, 123, 780, 1, 4, 0, 0, ";", "#X", 0, 57, 123, 370, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 539, 1, 4, 0, 0, ";", "#X", 8, 62, 122, 627, 5, 3, 0, 0, ";", "#X", 370, 35, 123, 193, 10, 13, 0, 0, ";", "#X", 0, 46, 119, 1157, 10, 13, 0, 0, ";", "#X", 8, 55, 118, 386, 1, 4, 0, 0, ";", "#X", 201, 60, 122, 2120, 5, 3, 0, 0, ";", "#X", 176, 32, 125, 1583, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 506, 10, 13, 0, 0, ";", "#X", 0, 49, 124, 3470, 10, 13, 0, 0, ";", "#X", 9, 44, 123, 1502, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 385, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 578, 1, 4, 0, 0, ";", "#X", 377, 46, 121, 771, 10, 13, 0, 0, ";", "#X", 8, 56, 120, 345, 1, 4, 0, 0, ";", "#X", 378, 40, 124, 441, 10, 13, 0, 0, ";", "#X", 0, 46, 120, 385, 10, 13, 0, 0, ";", "#X", 8, 60, 121, 771, 1, 4, 0, 0, ";", "#X", 0, 63, 120, 490, 1, 4, 0, 0, ";", "#X", 377, 35, 124, 410, 10, 13, 0, 0, ";", "#X", 0, 46, 120, 386, 10, 13, 0, 0, ";", "#X", 8, 56, 116, 362, 1, 4, 0, 0, ";", "#X", 378, 31, 124, 747, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 441, 10, 13, 0, 0, ";", "#X", 0, 46, 123, 67084, 10, 13, 0, 0, ";", "#X", 8, 43, 122, 803, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 393, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 658, 1, 4, 0, 0, ";", "#X", 377, 35, 124, 362, 10, 13, 0, 0, ";", "#X", 8, 55, 113, 273, 1, 4, 0, 0, ";", "#X", 378, 34, 121, 795, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 120, 10, 13, 0, 0, ";", "#X", 0, 42, 120, 192, 10, 13, 0, 0, ";", "#X", 8, 41, 122, 763, 1, 4, 0, 0, ";", "#X", 0, 56, 123, 417, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 546, 1, 4, 0, 0, ";", "#X", 184, 43, 123, 129, 10, 13, 0, 0, ";", "#X", 193, 35, 123, 161, 10, 13, 0, 0, ";", "#X", 0, 45, 124, 193, 10, 13, 0, 0, ";", "#X", 8, 53, 117, 362, 1, 4, 0, 0, ";", "#X", 378, 39, 125, 683, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 1036, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 12691, 10, 13, 0, 0, ";", "#X", 8, 39, 123, 2353, 1, 4, 0, 0, ";", "#X", 0, 51, 122, 2265, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 466, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 498, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 450, 1, 4, 0, 0, ";", "#X", 0, 70, 97, 2313, 3, 6, 0, 0, ";", "#X", 0, 75, 86, 2329, 3, 6, 0, 0, ";", "#X", 8, 67, 123, 2297, 5, 3, 0, 0, ";", "#X", 369, 51, 120, 185, 10, 13, 0, 0, ";", "#X", 8, 55, 93, 458, 1, 4, 0, 0, ";", "#X", 378, 39, 123, 185, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1261, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 265, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 185, 10, 13, 0, 0, ";", "#X", 8, 58, 123, 474, 1, 4, 0, 0, ";", "#X", 0, 63, 122, 506, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 402, 1, 4, 0, 0, ";", "#X", 377, 39, 123, 185, 2, 5, 0, 0, ";", "#X", 0, 35, 117, 121, 10, 13, 0, 0, ";", "#X", 0, 51, 120, 105, 10, 13, 0, 0, ";", "#X", 8, 55, 117, 450, 1, 4, 0, 0, ";", "#X", 378, 39, 124, 201, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 1237, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 185, 10, 13, 0, 0, ";", "#X", 8, 58, 122, 450, 1, 4, 0, 0, ";", "#X", 0, 63, 121, 602, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 378, 1, 4, 0, 0, ";", "#X", 378, 39, 123, 329, 2, 5, 0, 0, ";", "#X", 0, 51, 117, 80, 10, 13, 0, 0, ";", "#X", 8, 55, 118, 313, 1, 4, 0, 0, ";", "#X", 377, 38, 124, 273, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1173, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 209, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 185, 10, 13, 0, 0, ";", "#X", 8, 38, 122, 755, 1, 4, 0, 0, ";", "#X", 0, 50, 123, 659, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 386, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 345, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 811, 1, 4, 0, 0, ";", "#X", 0, 74, 100, 819, 3, 6, 0, 0, ";", "#X", 0, 77, 102, 811, 3, 6, 0, 0, ";", "#X", 8, 65, 123, 418, 5, 3, 0, 0, ";", "#X", 370, 38, 123, 313, 2, 5, 0, 0, ";", "#X", 0, 51, 118, 136, 10, 13, 0, 0, ";", "#X", 8, 53, 117, 329, 1, 4, 0, 0, ";", "#X", 8, 67, 123, 2554, 5, 3, 0, 0, ";", "#X", 369, 36, 123, 217, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 884, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 113, 10, 13, 0, 0, ";", "#X", 8, 36, 123, 2554, 1, 4, 0, 0, ";", "#X", 0, 48, 123, 2643, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 257, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 450, 1, 4, 0, 0, ";", "#X", 0, 72, 98, 1566, 3, 6, 0, 0, ";", "#X", 0, 75, 92, 1574, 3, 6, 0, 0, ";", "#X", 378, 36, 122, 152, 2, 5, 0, 0, ";", "#X", 0, 51, 119, 80, 10, 13, 0, 0, ";", "#X", 8, 60, 116, 450, 1, 4, 0, 0, ";", "#X", 377, 36, 123, 338, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1189, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 225, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 185, 10, 13, 0, 0, ";", "#X", 8, 63, 121, 651, 1, 4, 0, 0, ";", "#X", 0, 79, 98, 2354, 3, 6, 0, 0, ";", "#X", 378, 31, 125, 257, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 72, 10, 13, 0, 0, ";", "#X", 0, 51, 120, 136, 10, 13, 0, 0, ";", "#X", 8, 67, 117, 409, 1, 4, 0, 0, ";", "#X", 377, 36, 123, 306, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 908, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 129, 10, 13, 0, 0, ";", "#X", 8, 62, 119, 402, 1, 4, 0, 0, ";", "#X", 0, 74, 118, 522, 1, 4, 0, 0, ";", "#X", 0, 69, 92, 49, 3, 6, 0, 0, ";", "#X", 0, 71, 77, 699, 3, 6, 0, 0, ";", "#X", 0, 74, 95, 715, 3, 6, 0, 0, ";", "#X", 378, 36, 121, 265, 2, 5, 0, 0, ";", "#X", 0, 51, 120, 104, 10, 13, 0, 0, ";", "#X", 8, 63, 119, 1060, 1, 4, 0, 0, ";", "#X", 377, 36, 123, 105, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1181, 10, 13, 0, 0, ";", "#X", 0, 42, 124, 249, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 121, 10, 13, 0, 0, ";", "#X", 8, 60, 116, 932, 1, 4, 0, 0, ";", "#X", 0, 72, 122, 1205, 1, 4, 0, 0, ";", "#X", 0, 72, 99, 852, 3, 6, 0, 0, ";", "#X", 0, 75, 92, 820, 3, 6, 0, 0, ";", "#X", 185, 36, 122, 185, 2, 5, 0, 0, ";", "#X", 177, 67, 112, 152, 5, 3, 0, 0, ";", "#X", 16, 31, 122, 201, 2, 5, 0, 0, ";", "#X", 0, 35, 116, 72, 10, 13, 0, 0, ";", "#X", 0, 51, 113, 136, 10, 13, 0, 0, ";", "#X", 8, 67, 114, 321, 1, 4, 0, 0, ";", "#X", 72, 72, 117, 137, 5, 3, 0, 0, ";", "#X", 97, 75, 123, 136, 5, 3, 0, 0, ";", "#X", 16, 30, 125, 184, 2, 5, 0, 0, ";", "#X", 80, 79, 123, 956, 5, 3, 0, 0, ";", "#X", 112, 29, 123, 330, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 892, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 137, 10, 13, 0, 0, ";", "#X", 9, 41, 120, 1204, 1, 4, 0, 0, ";", "#X", 0, 53, 123, 979, 1, 4, 0, 0, ";", "#X", 0, 65, 122, 578, 1, 4, 0, 0, ";", "#X", 0, 68, 123, 401, 1, 4, 0, 0, ";", "#X", 0, 68, 99, 1542, 3, 6, 0, 0, ";", "#X", 0, 77, 98, 3116, 3, 6, 0, 0, ";", "#X", 377, 29, 122, 217, 2, 5, 0, 0, ";", "#X", 0, 51, 118, 104, 10, 13, 0, 0, ";", "#X", 8, 60, 120, 426, 1, 4, 0, 0, ";", "#X", 378, 29, 120, 321, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1052, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 232, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 144, 10, 13, 0, 0, ";", "#X", 8, 65, 123, 305, 1, 4, 0, 0, ";", "#X", 0, 68, 121, 650, 1, 4, 0, 0, ";", "#X", 0, 72, 120, 1341, 1, 4, 0, 0, ";", "#X", 144, 79, 123, 249, 5, 3, 0, 0, ";", "#X", 233, 77, 123, 185, 5, 3, 0, 0, ";", "#X", 0, 41, 125, 161, 2, 5, 0, 0, ";", "#X", 0, 35, 118, 88, 10, 13, 0, 0, ";", "#X", 0, 51, 120, 113, 10, 13, 0, 0, ";", "#X", 8, 40, 121, 410, 1, 4, 0, 0, ";", "#X", 0, 52, 115, 217, 1, 4, 0, 0, ";", "#X", 0, 60, 112, 651, 1, 4, 0, 0, ";", "#X", 0, 64, 122, 257, 1, 4, 0, 0, ";", "#X", 185, 40, 125, 217, 2, 5, 0, 0, ";", "#X", 72, 77, 123, 1269, 5, 3, 0, 0, ";", "#X", 121, 39, 125, 313, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 779, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 152, 10, 13, 0, 0, ";", "#X", 8, 39, 122, 859, 1, 4, 0, 0, ";", "#X", 0, 51, 123, 674, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 441, 1, 4, 0, 0, ";", "#X", 0, 68, 123, 530, 1, 4, 0, 0, ";", "#X", 0, 67, 104, 803, 3, 6, 0, 0, ";", "#X", 377, 39, 120, 394, 2, 5, 0, 0, ";", "#X", 0, 51, 119, 89, 10, 13, 0, 0, ";", "#X", 8, 60, 95, 426, 1, 4, 0, 0, ";", "#X", 378, 38, 125, 273, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1213, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 233, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 160, 10, 13, 0, 0, ";", "#X", 8, 38, 122, 731, 1, 4, 0, 0, ";", "#X", 0, 50, 123, 321, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 490, 1, 4, 0, 0, ";", "#X", 0, 68, 123, 377, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 393, 1, 4, 0, 0, ";", "#X", 0, 68, 100, 787, 3, 6, 0, 0, ";", "#X", 377, 38, 125, 233, 2, 5, 0, 0, ";", "#X", 0, 35, 117, 81, 10, 13, 0, 0, ";", "#X", 0, 51, 120, 105, 10, 13, 0, 0, ";", "#X", 8, 60, 110, 314, 1, 4, 0, 0, ";", "#X", 145, 70, 123, 185, 5, 3, 0, 0, ";", "#X", 40, 36, 121, 193, 2, 5, 0, 0, ";", "#X", 193, 34, 125, 329, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 883, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 128, 10, 13, 0, 0, ";", "#X", 8, 34, 121, 2723, 1, 4, 0, 0, ";", "#X", 0, 46, 123, 12907, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 466, 1, 4, 0, 0, ";", "#X", 0, 66, 18, 241, 1, 4, 0, 0, ";", "#X", 0, 70, 122, 1221, 1, 4, 0, 0, ";", "#X", 0, 70, 95, 1614, 3, 6, 0, 0, ";", "#X", 0, 74, 96, 1622, 3, 6, 0, 0, ";", "#X", 32, 70, 123, 313, 5, 3, 0, 0, ";", "#X", 345, 34, 121, 193, 2, 5, 0, 0, ";", "#X", 0, 51, 119, 89, 10, 13, 0, 0, ";", "#X", 8, 77, 123, 298, 5, 3, 0, 0, ";", "#X", 0, 58, 107, 442, 1, 4, 0, 0, ";", "#X", 378, 34, 122, 217, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 843, 10, 13, 0, 0, ";", "#X", 0, 42, 121, 177, 10, 13, 0, 0, ";", "#X", 0, 51, 124, 136, 10, 13, 0, 0, ";", "#X", 8, 62, 123, 458, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 434, 1, 4, 0, 0, ";", "#X", 8, 77, 123, 353, 5, 3, 0, 0, ";", "#X", 369, 34, 123, 193, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 73, 10, 13, 0, 0, ";", "#X", 0, 51, 120, 121, 10, 13, 0, 0, ";", "#X", 8, 58, 105, 410, 1, 4, 0, 0, ";", "#X", 17, 79, 123, 313, 5, 3, 0, 0, ";", "#X", 361, 34, 125, 241, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 859, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 112, 10, 13, 0, 0, ";", "#X", 8, 62, 122, 474, 1, 4, 0, 0, ";", "#X", 0, 65, 122, 498, 1, 4, 0, 0, ";", "#X", 0, 70, 120, 562, 1, 4, 0, 0, ";", "#X", 0, 72, 100, 763, 3, 6, 0, 0, ";", "#X", 0, 75, 96, 787, 3, 6, 0, 0, ";", "#X", 32, 79, 123, 337, 5, 3, 0, 0, ";", "#X", 346, 34, 125, 216, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 112, 10, 13, 0, 0, ";", "#X", 0, 51, 120, 72, 10, 13, 0, 0, ";", "#X", 8, 58, 117, 1148, 1, 4, 0, 0, ";", "#X", 24, 80, 123, 289, 5, 3, 0, 0, ";", "#X", 353, 34, 123, 185, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 104, 10, 13, 0, 0, ";", "#X", 0, 42, 121, 153, 10, 13, 0, 0, ";", "#X", 8, 62, 122, 313, 1, 4, 0, 0, ";", "#X", 0, 65, 122, 329, 1, 4, 0, 0, ";", "#X", 0, 70, 117, 201, 1, 4, 0, 0, ";", "#X", 0, 74, 95, 779, 3, 6, 0, 0, ";", "#X", 0, 77, 96, 803, 3, 6, 0, 0, ";", "#X", 24, 80, 123, 1117, 5, 3, 0, 0, ";", "#X", 161, 36, 124, 209, 2, 5, 0, 0, ";", "#X", 0, 43, 123, 177, 10, 13, 0, 0, ";", "#X", 193, 38, 125, 305, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 128, 10, 13, 0, 0, ";", "#X", 0, 45, 122, 128, 10, 13, 0, 0, ";", "#X", 385, 39, 122, 948, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 1020, 10, 13, 0, 0, ";", "#X", 0, 49, 122, 6538, 10, 13, 0, 0, ";", "#X", 8, 39, 122, 1454, 1, 4, 0, 0, ";", "#X", 0, 51, 123, 538, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 185, 1, 4, 0, 0, ";", "#X", 0, 63, 122, 1157, 1, 4, 0, 0, ";", "#X", 0, 67, 122, 715, 1, 4, 0, 0, ";", "#X", 0, 75, 98, 763, 3, 6, 0, 0, ";", "#X", 0, 79, 102, 1591, 3, 6, 0, 0, ";", "#X", 346, 79, 123, 1486, 5, 3, 0, 0, ";", "#X", 32, 51, 120, 209, 10, 13, 0, 0, ";", "#X", 369, 67, 122, 402, 9, 10, 0, 0, ";", "#X", 16, 40, 124, 1165, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 418, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 169, 10, 13, 0, 0, ";", "#X", 8, 51, 123, 763, 1, 4, 0, 0, ";", "#X", 0, 58, 122, 715, 1, 4, 0, 0, ";", "#X", 0, 67, 122, 418, 1, 4, 0, 0, ";", "#X", 0, 70, 87, 1623, 3, 6, 0, 0, ";", "#X", 0, 75, 74, 715, 3, 6, 0, 0, ";", "#X", 354, 65, 124, 200, 9, 10, 0, 0, ";", "#X", 8, 67, 117, 401, 12, 11, 0, 0, ";", "#X", 16, 39, 120, 361, 2, 5, 0, 0, ";", "#X", 0, 35, 118, 96, 10, 13, 0, 0, ";", "#X", 0, 51, 120, 128, 10, 13, 0, 0, ";", "#X", 8, 65, 122, 209, 1, 4, 0, 0, ";", "#X", 177, 63, 124, 160, 9, 10, 0, 0, ";", "#X", 16, 63, 112, 168, 1, 4, 0, 0, ";", "#X", 160, 65, 119, 201, 12, 11, 0, 0, ";", "#X", 8, 70, 124, 1173, 9, 10, 0, 0, ";", "#X", 16, 38, 123, 908, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 860, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 97, 10, 13, 0, 0, ";", "#X", 8, 38, 123, 1390, 1, 4, 0, 0, ";", "#X", 0, 58, 102, 1028, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 972, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 1069, 1, 4, 0, 0, ";", "#X", 0, 70, 122, 1125, 1, 4, 0, 0, ";", "#X", 0, 77, 89, 852, 3, 6, 0, 0, ";", "#X", 177, 63, 119, 161, 12, 11, 0, 0, ";", "#X", 185, 70, 119, 1172, 12, 11, 0, 0, ";", "#X", 16, 51, 119, 56, 10, 13, 0, 0, ";", "#X", 385, 40, 124, 1181, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 217, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 113, 10, 13, 0, 0, ";", "#X", 8, 50, 122, 796, 1, 4, 0, 0, ";", "#X", 0, 65, 82, 763, 3, 6, 0, 0, ";", "#X", 0, 74, 89, 739, 3, 6, 0, 0, ";", "#X", 378, 38, 124, 385, 2, 5, 0, 0, ";", "#X", 0, 67, 124, 377, 9, 10, 0, 0, ";", "#X", 0, 35, 114, 136, 10, 13, 0, 0, ";", "#X", 0, 51, 118, 120, 10, 13, 0, 0, ";", "#X", 8, 67, 122, 321, 1, 4, 0, 0, ";", "#X", 377, 36, 122, 988, 2, 5, 0, 0, ";", "#X", 0, 72, 124, 1398, 9, 10, 0, 0, ";", "#X", 0, 67, 119, 378, 12, 11, 0, 0, ";", "#X", 0, 35, 124, 908, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 105, 10, 13, 0, 0, ";", "#X", 9, 36, 123, 1413, 1, 4, 0, 0, ";", "#X", 0, 60, 122, 1381, 1, 4, 0, 0, ";", "#X", 0, 63, 122, 1421, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 1429, 1, 4, 0, 0, ";", "#X", 0, 72, 122, 1405, 1, 4, 0, 0, ";", "#X", 0, 67, 89, 819, 3, 6, 0, 0, ";", "#X", 0, 75, 77, 811, 3, 6, 0, 0, ";", "#X", 377, 72, 119, 1398, 12, 11, 0, 0, ";", "#X", 0, 51, 114, 96, 10, 13, 0, 0, ";", "#X", 386, 40, 124, 1068, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 224, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 120, 10, 13, 0, 0, ";", "#X", 8, 48, 121, 1381, 1, 4, 0, 0, ";", "#X", 0, 72, 77, 819, 3, 6, 0, 0, ";", "#X", 0, 79, 92, 787, 3, 6, 0, 0, ";", "#X", 377, 36, 119, 145, 2, 5, 0, 0, ";", "#X", 0, 35, 114, 113, 10, 13, 0, 0, ";", "#X", 0, 51, 115, 105, 10, 13, 0, 0, ";", "#X", 370, 72, 124, 457, 9, 10, 0, 0, ";", "#X", 16, 36, 122, 771, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 867, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 112, 10, 13, 0, 0, ";", "#X", 8, 36, 123, 1333, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 257, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 353, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 466, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 642, 1, 4, 0, 0, ";", "#X", 0, 75, 86, 1526, 3, 6, 0, 0, ";", "#X", 0, 84, 78, 755, 3, 6, 0, 0, ";", "#X", 361, 72, 119, 458, 12, 11, 0, 0, ";", "#X", 16, 51, 115, 81, 10, 13, 0, 0, ";", "#X", 8, 62, 122, 185, 1, 4, 0, 0, ";", "#X", 0, 74, 124, 193, 9, 10, 0, 0, ";", "#X", 185, 75, 124, 257, 9, 10, 0, 0, ";", "#X", 8, 63, 119, 506, 1, 4, 0, 0, ";", "#X", 185, 31, 122, 401, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 1213, 10, 13, 0, 0, ";", "#X", 0, 42, 124, 273, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 152, 10, 13, 0, 0, ";", "#X", 8, 48, 121, 715, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 225, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 425, 1, 4, 0, 0, ";", "#X", 0, 72, 122, 1791, 1, 4, 0, 0, ";", "#X", 0, 79, 84, 755, 3, 6, 0, 0, ";", "#X", 0, 74, 119, 193, 12, 11, 0, 0, ";", "#X", 40, 72, 124, 385, 9, 10, 0, 0, ";", "#X", 145, 75, 119, 257, 12, 11, 0, 0, ";", "#X", 192, 30, 120, 402, 2, 5, 0, 0, ";", "#X", 0, 35, 118, 129, 10, 13, 0, 0, ";", "#X", 0, 51, 121, 137, 10, 13, 0, 0, ";", "#X", 8, 62, 119, 249, 1, 4, 0, 0, ";", "#X", 8, 74, 124, 209, 9, 10, 0, 0, ";", "#X", 32, 72, 119, 386, 12, 11, 0, 0, ";", "#X", 153, 43, 118, 96, 1, 4, 0, 0, ";", "#X", 0, 63, 114, 129, 1, 4, 0, 0, ";", "#X", 0, 75, 124, 217, 9, 10, 0, 0, ";", "#X", 185, 29, 123, 1140, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 899, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 3269, 10, 13, 0, 0, ";", "#X", 8, 41, 122, 1068, 1, 4, 0, 0, ";", "#X", 0, 65, 121, 1068, 1, 4, 0, 0, ";", "#X", 0, 68, 121, 1518, 1, 4, 0, 0, ";", "#X", 0, 77, 89, 819, 3, 6, 0, 0, ";", "#X", 0, 80, 84, 3116, 3, 6, 0, 0, ";", "#X", 8, 74, 119, 209, 12, 11, 0, 0, ";", "#X", 32, 77, 124, 1133, 9, 10, 0, 0, ";", "#X", 153, 75, 119, 216, 12, 11, 0, 0, ";", "#X", 184, 51, 120, 113, 10, 13, 0, 0, ";", "#X", 49, 77, 119, 1132, 12, 11, 0, 0, ";", "#X", 337, 40, 124, 1084, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 289, 10, 13, 0, 0, ";", "#X", 0, 51, 124, 410, 10, 13, 0, 0, ";", "#X", 8, 53, 122, 289, 1, 4, 0, 0, ";", "#X", 0, 76, 94, 779, 3, 6, 0, 0, ";", "#X", 377, 41, 122, 217, 2, 5, 0, 0, ";", "#X", 0, 35, 120, 105, 10, 13, 0, 0, ";", "#X", 8, 40, 123, 410, 1, 4, 0, 0, ";", "#X", 0, 52, 122, 402, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 1085, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 266, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 338, 1, 4, 0, 0, ";", "#X", 25, 72, 124, 281, 9, 10, 0, 0, ";", "#X", 160, 40, 121, 249, 2, 5, 0, 0, ";", "#X", 161, 77, 124, 233, 9, 10, 0, 0, ";", "#X", 32, 39, 123, 731, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 1149, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 80, 10, 13, 0, 0, ";", "#X", 8, 39, 123, 819, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 610, 1, 4, 0, 0, ";", "#X", 0, 68, 123, 1325, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 602, 1, 4, 0, 0, ";", "#X", 0, 75, 84, 819, 3, 6, 0, 0, ";", "#X", 24, 72, 119, 281, 12, 11, 0, 0, ";", "#X", 169, 79, 123, 144, 9, 10, 0, 0, ";", "#X", 152, 77, 119, 233, 12, 11, 0, 0, ";", "#X", 73, 80, 124, 112, 9, 10, 0, 0, ";", "#X", 160, 82, 124, 89, 9, 10, 0, 0, ";", "#X", 0, 79, 118, 145, 12, 11, 0, 0, ";", "#X", 177, 82, 124, 1253, 9, 10, 0, 0, ";", "#X", 8, 38, 125, 811, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1181, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 297, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 169, 10, 13, 0, 0, ";", "#X", 8, 50, 123, 394, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 402, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 691, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 313, 1, 4, 0, 0, ";", "#X", 0, 74, 87, 739, 3, 6, 0, 0, ";", "#X", 32, 80, 119, 113, 12, 11, 0, 0, ";", "#X", 161, 82, 119, 88, 12, 11, 0, 0, ";", "#X", 177, 82, 119, 1253, 12, 11, 0, 0, ";", "#X", 8, 51, 120, 104, 10, 13, 0, 0, ";", "#X", 385, 34, 125, 1036, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 868, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 3599, 10, 13, 0, 0, ";", "#X", 8, 34, 123, 787, 1, 4, 0, 0, ";", "#X", 0, 46, 123, 2105, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 996, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 1486, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 1663, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 2032, 1, 4, 0, 0, ";", "#X", 0, 70, 84, 940, 3, 6, 0, 0, ";", "#X", 0, 82, 83, 2378, 3, 6, 0, 0, ";", "#X", 378, 51, 117, 128, 10, 13, 0, 0, ";", "#X", 72, 80, 124, 129, 9, 10, 0, 0, ";", "#X", 137, 82, 124, 168, 9, 10, 0, 0, ";", "#X", 136, 80, 124, 121, 9, 10, 0, 0, ";", "#X", 40, 40, 123, 1020, 10, 13, 0, 0, ";", "#X", 0, 42, 124, 273, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 161, 10, 13, 0, 0, ";", "#X", 8, 46, 120, 2137, 1, 4, 0, 0, ";", "#X", 0, 72, 97, 699, 3, 6, 0, 0, ";", "#X", 0, 75, 89, 161, 3, 6, 0, 0, ";", "#X", 0, 76, 89, 129, 3, 6, 0, 0, ";", "#X", 65, 80, 119, 128, 12, 11, 0, 0, ";", "#X", 8, 79, 124, 136, 9, 10, 0, 0, ";", "#X", 120, 75, 42, 418, 3, 6, 0, 0, ";", "#X", 8, 82, 119, 169, 12, 11, 0, 0, ";", "#X", 8, 80, 124, 121, 9, 10, 0, 0, ";", "#X", 105, 79, 124, 136, 9, 10, 0, 0, ";", "#X", 24, 80, 119, 120, 12, 11, 0, 0, ";", "#X", 40, 34, 119, 177, 2, 5, 0, 0, ";", "#X", 0, 35, 119, 168, 10, 13, 0, 0, ";", "#X", 0, 51, 120, 104, 10, 13, 0, 0, ";", "#X", 8, 34, 119, 313, 1, 4, 0, 0, ";", "#X", 0, 58, 118, 1100, 1, 4, 0, 0, ";", "#X", 56, 77, 124, 112, 9, 10, 0, 0, ";", "#X", 16, 79, 119, 137, 12, 11, 0, 0, ";", "#X", 72, 79, 124, 153, 9, 10, 0, 0, ";", "#X", 65, 80, 119, 120, 12, 11, 0, 0, ";", "#X", 40, 77, 124, 136, 9, 10, 0, 0, ";", "#X", 64, 79, 119, 137, 12, 11, 0, 0, ";", "#X", 64, 34, 123, 980, 2, 5, 0, 0, ";", "#X", 0, 75, 124, 137, 9, 10, 0, 0, ";", "#X", 0, 35, 122, 820, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 129, 10, 13, 0, 0, ";", "#X", 8, 34, 117, 828, 1, 4, 0, 0, ";", "#X", 0, 62, 120, 932, 1, 4, 0, 0, ";", "#X", 0, 74, 92, 1535, 3, 6, 0, 0, ";", "#X", 0, 77, 89, 1526, 3, 6, 0, 0, ";", "#X", 57, 77, 119, 112, 12, 11, 0, 0, ";", "#X", 72, 77, 124, 104, 9, 10, 0, 0, ";", "#X", 16, 79, 119, 153, 12, 11, 0, 0, ";", "#X", 72, 75, 124, 129, 9, 10, 0, 0, ";", "#X", 32, 77, 119, 137, 12, 11, 0, 0, ";", "#X", 81, 74, 124, 80, 9, 10, 0, 0, ";", "#X", 48, 75, 119, 136, 12, 11, 0, 0, ";", "#X", 0, 40, 123, 96, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 233, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 120, 10, 13, 0, 0, ";", "#X", 8, 65, 120, 434, 1, 4, 0, 0, ";", "#X", 24, 75, 124, 112, 9, 10, 0, 0, ";", "#X", 96, 74, 124, 97, 9, 10, 0, 0, ";", "#X", 8, 77, 119, 105, 12, 11, 0, 0, ";", "#X", 89, 75, 119, 128, 12, 11, 0, 0, ";", "#X", 8, 72, 124, 160, 9, 10, 0, 0, ";", "#X", 104, 74, 119, 81, 12, 11, 0, 0, ";", "#X", 24, 70, 124, 763, 9, 10, 0, 0, ";", "#X", 24, 40, 123, 137, 10, 13, 0, 0, ";", "#X", 8, 46, 122, 12788, 1, 4, 0, 0, ";", "#X", 0, 58, 120, 659, 1, 4, 0, 0, ";", "#X", 0, 70, 120, 635, 1, 4, 0, 0, ";", "#X", 0, 80, 82, 780, 3, 6, 0, 0, ";", "#X", 25, 75, 119, 112, 12, 11, 0, 0, ";", "#X", 96, 74, 119, 96, 12, 11, 0, 0, ";", "#X", 64, 36, 121, 201, 2, 5, 0, 0, ";", "#X", 0, 43, 122, 185, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 113, 10, 13, 0, 0, ";", "#X", 8, 65, 107, 554, 1, 4, 0, 0, ";", "#X", 32, 72, 119, 161, 12, 11, 0, 0, ";", "#X", 129, 70, 119, 763, 12, 11, 0, 0, ";", "#X", 24, 38, 124, 410, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 153, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 88, 10, 13, 0, 0, ";", "#X", 0, 45, 122, 361, 10, 13, 0, 0, ";", "#X", 8, 34, 116, 120, 1, 4, 0, 0, ";", "#X", 378, 39, 123, 650, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 859, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 1734, 10, 13, 0, 0, ";", "#X", 8, 39, 123, 1012, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 987, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 1084, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 1036, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 1020, 1, 4, 0, 0, ";", "#X", 0, 75, 83, 1542, 3, 6, 0, 0, ";", "#X", 0, 79, 88, 835, 3, 6, 0, 0, ";", "#X", 249, 70, 124, 160, 9, 10, 0, 0, ";", "#X", 176, 72, 124, 201, 9, 10, 0, 0, ";", "#X", 161, 74, 124, 128, 9, 10, 0, 0, ";", "#X", 48, 70, 119, 161, 12, 11, 0, 0, ";", "#X", 113, 75, 124, 112, 9, 10, 0, 0, ";", "#X", 16, 39, 119, 216, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1188, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 353, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 224, 10, 13, 0, 0, ";", "#X", 8, 51, 120, 779, 1, 4, 0, 0, ";", "#X", 0, 82, 90, 771, 3, 6, 0, 0, ";", "#X", 40, 72, 119, 201, 12, 11, 0, 0, ";", "#X", 80, 77, 124, 153, 9, 10, 0, 0, ";", "#X", 80, 74, 119, 129, 12, 11, 0, 0, ";", "#X", 49, 79, 124, 120, 9, 10, 0, 0, ";", "#X", 112, 75, 119, 113, 12, 11, 0, 0, ";", "#X", 16, 39, 122, 394, 2, 5, 0, 0, ";", "#X", 0, 35, 116, 153, 10, 13, 0, 0, ";", "#X", 0, 51, 121, 105, 10, 13, 0, 0, ";", "#X", 8, 39, 122, 305, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 715, 1, 4, 0, 0, ";", "#X", 0, 63, 120, 346, 1, 4, 0, 0, ";", "#X", 0, 67, 120, 362, 1, 4, 0, 0, ";", "#X", 0, 70, 122, 1293, 1, 4, 0, 0, ";", "#X", 0, 80, 124, 129, 9, 10, 0, 0, ";", "#X", 121, 82, 124, 522, 9, 10, 0, 0, ";", "#X", 0, 77, 119, 152, 12, 11, 0, 0, ";", "#X", 128, 79, 119, 121, 12, 11, 0, 0, ";", "#X", 129, 38, 125, 723, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 883, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 1767, 10, 13, 0, 0, ";", "#X", 8, 38, 121, 851, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 417, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 634, 1, 4, 0, 0, ";", "#X", 0, 74, 92, 1622, 3, 6, 0, 0, ";", "#X", 0, 77, 78, 1582, 3, 6, 0, 0, ";", "#X", 0, 80, 119, 128, 12, 11, 0, 0, ";", "#X", 120, 82, 119, 522, 12, 11, 0, 0, ";", "#X", 129, 70, 124, 104, 9, 10, 0, 0, ";", "#X", 128, 72, 124, 185, 9, 10, 0, 0, ";", "#X", 0, 51, 120, 121, 10, 13, 0, 0, ";", "#X", 8, 58, 117, 458, 1, 4, 0, 0, ";", "#X", 145, 74, 124, 128, 9, 10, 0, 0, ";", "#X", 48, 62, 110, 594, 1, 4, 0, 0, ";", "#X", 56, 70, 119, 105, 12, 11, 0, 0, ";", "#X", 40, 75, 124, 121, 9, 10, 0, 0, ";", "#X", 89, 38, 121, 120, 2, 5, 0, 0, ";", "#X", 0, 72, 119, 184, 12, 11, 0, 0, ";", "#X", 0, 40, 124, 1189, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 321, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 152, 10, 13, 0, 0, ";", "#X", 8, 50, 123, 771, 1, 4, 0, 0, ";", "#X", 0, 82, 78, 731, 3, 6, 0, 0, ";", "#X", 40, 77, 124, 185, 9, 10, 0, 0, ";", "#X", 104, 74, 119, 129, 12, 11, 0, 0, ";", "#X", 49, 58, 122, 433, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 257, 1, 4, 0, 0, ";", "#X", 0, 70, 122, 369, 1, 4, 0, 0, ";", "#X", 0, 79, 124, 128, 9, 10, 0, 0, ";", "#X", 96, 75, 119, 120, 12, 11, 0, 0, ";", "#X", 56, 80, 124, 121, 9, 10, 0, 0, ";", "#X", 32, 38, 125, 450, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 177, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 97, 10, 13, 0, 0, ";", "#X", 8, 43, 116, 394, 1, 4, 0, 0, ";", "#X", 40, 77, 119, 185, 12, 11, 0, 0, ";", "#X", 57, 82, 124, 1445, 9, 10, 0, 0, ";", "#X", 96, 67, 112, 48, 1, 4, 0, 0, ";", "#X", 0, 79, 119, 129, 12, 11, 0, 0, ";", "#X", 153, 80, 119, 120, 12, 11, 0, 0, ";", "#X", 32, 36, 125, 1092, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 916, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 3285, 10, 13, 0, 0, ";", "#X", 8, 36, 123, 1462, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 819, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 1060, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 1181, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 1365, 1, 4, 0, 0, ";", "#X", 0, 72, 89, 1550, 3, 6, 0, 0, ";", "#X", 0, 75, 86, 1526, 3, 6, 0, 0, ";", "#X", 96, 82, 119, 1446, 12, 11, 0, 0, ";", "#X", 281, 51, 118, 113, 10, 13, 0, 0, ";", "#X", 386, 40, 124, 1132, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 281, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 161, 10, 13, 0, 0, ";", "#X", 8, 48, 122, 1253, 1, 4, 0, 0, ";", "#X", 0, 82, 87, 771, 3, 6, 0, 0, ";", "#X", 377, 31, 121, 257, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 137, 10, 13, 0, 0, ";", "#X", 0, 51, 120, 121, 10, 13, 0, 0, ";", "#X", 8, 74, 124, 177, 9, 10, 0, 0, ";", "#X", 1, 62, 117, 184, 1, 4, 0, 0, ";", "#X", 184, 34, 122, 177, 2, 5, 0, 0, ";", "#X", 8, 63, 116, 265, 1, 4, 0, 0, ";", "#X", 0, 75, 124, 193, 9, 10, 0, 0, ";", "#X", 185, 36, 124, 779, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 900, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 169, 10, 13, 0, 0, ";", "#X", 8, 36, 121, 1020, 1, 4, 0, 0, ";", "#X", 0, 60, 122, 273, 1, 4, 0, 0, ";", "#X", 0, 67, 122, 643, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 659, 1, 4, 0, 0, ";", "#X", 0, 70, 81, 763, 3, 6, 0, 0, ";", "#X", 0, 74, 74, 900, 3, 6, 0, 0, ";", "#X", 0, 77, 78, 835, 3, 6, 0, 0, ";", "#X", 0, 72, 124, 361, 9, 10, 0, 0, ";", "#X", 0, 74, 119, 177, 12, 11, 0, 0, ";", "#X", 193, 75, 119, 193, 12, 11, 0, 0, ";", "#X", 185, 51, 120, 112, 10, 13, 0, 0, ";", "#X", 8, 62, 120, 192, 1, 4, 0, 0, ";", "#X", 0, 74, 124, 192, 9, 10, 0, 0, ";", "#X", 0, 72, 119, 361, 12, 11, 0, 0, ";", "#X", 168, 75, 124, 241, 9, 10, 0, 0, ";", "#X", 24, 63, 122, 201, 1, 4, 0, 0, ";", "#X", 185, 31, 122, 418, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1205, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 402, 10, 13, 0, 0, ";", "#X", 0, 51, 124, 161, 10, 13, 0, 0, ";", "#X", 8, 48, 122, 570, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 201, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 458, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 611, 1, 4, 0, 0, ";", "#X", 0, 72, 74, 771, 3, 6, 0, 0, ";", "#X", 0, 75, 90, 771, 3, 6, 0, 0, ";", "#X", 0, 82, 74, 105, 3, 6, 0, 0, ";", "#X", 0, 74, 119, 193, 12, 11, 0, 0, ";", "#X", 16, 72, 124, 418, 9, 10, 0, 0, ";", "#X", 153, 75, 119, 241, 12, 11, 0, 0, ";", "#X", 209, 30, 122, 361, 2, 5, 0, 0, ";", "#X", 0, 74, 124, 192, 9, 10, 0, 0, ";", "#X", 0, 35, 123, 152, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 136, 10, 13, 0, 0, ";", "#X", 8, 62, 114, 241, 1, 4, 0, 0, ";", "#X", 16, 72, 119, 417, 12, 11, 0, 0, ";", "#X", 152, 75, 124, 209, 9, 10, 0, 0, ";", "#X", 24, 43, 119, 97, 1, 4, 0, 0, ";", "#X", 0, 63, 117, 129, 1, 4, 0, 0, ";", "#X", 185, 29, 124, 1141, 2, 5, 0, 0, ";", "#X", 0, 74, 119, 193, 12, 11, 0, 0, ";", "#X", 0, 35, 123, 876, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 1848, 10, 13, 0, 0, ";", "#X", 8, 41, 119, 1157, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 643, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 755, 1, 4, 0, 0, ";", "#X", 0, 68, 122, 795, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 779, 1, 4, 0, 0, ";", "#X", 0, 65, 81, 964, 3, 6, 0, 0, ";", "#X", 0, 72, 81, 771, 3, 6, 0, 0, ";", "#X", 0, 77, 81, 964, 3, 6, 0, 0, ";", "#X", 0, 80, 81, 1060, 3, 6, 0, 0, ";", "#X", 16, 77, 124, 1061, 9, 10, 0, 0, ";", "#X", 153, 75, 119, 209, 12, 11, 0, 0, ";", "#X", 209, 51, 121, 112, 10, 13, 0, 0, ";", "#X", 24, 77, 119, 1060, 12, 11, 0, 0, ";", "#X", 361, 40, 123, 386, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 322, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 233, 10, 13, 0, 0, ";", "#X", 8, 53, 123, 410, 1, 4, 0, 0, ";", "#X", 314, 65, 124, 313, 9, 10, 0, 0, ";", "#X", 64, 41, 125, 225, 2, 5, 0, 0, ";", "#X", 0, 40, 122, 297, 10, 13, 0, 0, ";", "#X", 8, 65, 122, 88, 1, 4, 0, 0, ";", "#X", 0, 77, 121, 96, 1, 4, 0, 0, ";", "#X", 0, 53, 100, 96, 3, 6, 0, 0, ";", "#X", 0, 65, 100, 96, 3, 6, 0, 0, ";", "#X", 0, 77, 100, 96, 3, 6, 0, 0, ";", "#X", 0, 89, 92, 120, 3, 6, 0, 0, ";", "#X", 177, 67, 124, 249, 9, 10, 0, 0, ";", "#X", 8, 40, 121, 233, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 192, 10, 13, 0, 0, ";", "#X", 8, 52, 120, 32, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 72, 1, 4, 0, 0, ";", "#X", 0, 79, 123, 104, 1, 4, 0, 0, ";", "#X", 0, 52, 100, 96, 3, 6, 0, 0, ";", "#X", 0, 64, 100, 96, 3, 6, 0, 0, ";", "#X", 0, 79, 100, 96, 3, 6, 0, 0, ";", "#X", 0, 91, 100, 96, 3, 6, 0, 0, ";", "#X", 120, 65, 119, 313, 12, 11, 0, 0, ";", "#X", 64, 39, 125, 739, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 1237, 10, 13, 0, 0, ";", "#X", 0, 49, 120, 1751, 10, 13, 0, 0, ";", "#X", 8, 51, 122, 482, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 450, 1, 4, 0, 0, ";", "#X", 0, 68, 122, 346, 1, 4, 0, 0, ";", "#X", 0, 80, 123, 434, 1, 4, 0, 0, ";", "#X", 0, 51, 100, 386, 3, 6, 0, 0, ";", "#X", 0, 63, 100, 506, 3, 6, 0, 0, ";", "#X", 0, 68, 100, 442, 3, 6, 0, 0, ";", "#X", 0, 75, 100, 635, 3, 6, 0, 0, ";", "#X", 0, 80, 100, 482, 3, 6, 0, 0, ";", "#X", 0, 92, 100, 643, 3, 6, 0, 0, ";", "#X", 49, 68, 124, 658, 9, 10, 0, 0, ";", "#X", 128, 67, 119, 249, 12, 11, 0, 0, ";", "#X", 257, 68, 119, 659, 12, 11, 0, 0, ";", "#X", 297, 77, 124, 812, 9, 10, 0, 0, ";", "#X", 32, 38, 125, 772, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1318, 10, 13, 0, 0, ";", "#X", 0, 57, 121, 177, 10, 13, 0, 0, ";", "#X", 8, 50, 121, 410, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 418, 1, 4, 0, 0, ";", "#X", 0, 77, 123, 370, 1, 4, 0, 0, ";", "#X", 0, 89, 122, 362, 1, 4, 0, 0, ";", "#X", 0, 50, 95, 515, 3, 6, 0, 0, ";", "#X", 0, 62, 90, 539, 3, 6, 0, 0, ";", "#X", 0, 77, 104, 474, 3, 6, 0, 0, ";", "#X", 0, 89, 103, 434, 3, 6, 0, 0, ";", "#X", 346, 77, 119, 811, 12, 11, 0, 0, ";", "#X", 418, 37, 125, 963, 2, 5, 0, 0, ";", "#X", 0, 68, 124, 1036, 9, 10, 0, 0, ";", "#X", 0, 35, 124, 843, 10, 13, 0, 0, ";", "#X", 0, 49, 121, 1421, 10, 13, 0, 0, ";", "#X", 8, 49, 123, 1108, 1, 4, 0, 0, ";", "#X", 0, 61, 123, 963, 1, 4, 0, 0, ";", "#X", 0, 68, 123, 811, 1, 4, 0, 0, ";", "#X", 0, 80, 122, 843, 1, 4, 0, 0, ";", "#X", 0, 49, 97, 22819, 3, 6, 0, 0, ";", "#X", 0, 61, 104, 1076, 3, 6, 0, 0, ";", "#X", 0, 68, 103, 803, 3, 6, 0, 0, ";", "#X", 0, 80, 98, 819, 3, 6, 0, 0, ";", "#X", 377, 68, 119, 1036, 12, 11, 0, 0, ";", "#X", 386, 40, 124, 233, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 136, 10, 13, 0, 0, ";", "#X", 192, 37, 123, 964, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 169, 10, 13, 0, 0, ";", "#X", 0, 52, 122, 129, 10, 13, 0, 0, ";", "#X", 8, 61, 118, 964, 1, 4, 0, 0, ";", "#X", 0, 73, 118, 121, 1, 4, 0, 0, ";", "#X", 0, 85, 118, 121, 1, 4, 0, 0, ";", "#X", 0, 73, 100, 137, 3, 6, 0, 0, ";", "#X", 0, 85, 102, 137, 3, 6, 0, 0, ";", "#X", 57, 73, 124, 160, 9, 10, 0, 0, ";", "#X", 225, 36, 125, 321, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 160, 10, 13, 0, 0, ";", "#X", 0, 49, 120, 1220, 10, 13, 0, 0, ";", "#X", 8, 48, 117, 208, 1, 4, 0, 0, ";", "#X", 0, 60, 121, 208, 1, 4, 0, 0, ";", "#X", 0, 73, 123, 160, 1, 4, 0, 0, ";", "#X", 0, 85, 123, 160, 1, 4, 0, 0, ";", "#X", 0, 73, 124, 224, 9, 10, 0, 0, ";", "#X", 96, 48, 92, 177, 3, 6, 0, 0, ";", "#X", 0, 60, 89, 153, 3, 6, 0, 0, ";", "#X", 0, 73, 100, 161, 3, 6, 0, 0, ";", "#X", 0, 85, 100, 136, 3, 6, 0, 0, ";", "#X", 56, 73, 119, 161, 12, 11, 0, 0, ";", "#X", 129, 35, 125, 771, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 1188, 10, 13, 0, 0, ";", "#X", 0, 57, 121, 297, 10, 13, 0, 0, ";", "#X", 8, 47, 123, 514, 1, 4, 0, 0, ";", "#X", 0, 59, 123, 538, 1, 4, 0, 0, ";", "#X", 0, 73, 123, 417, 1, 4, 0, 0, ";", "#X", 0, 85, 122, 369, 1, 4, 0, 0, ";", "#X", 0, 47, 95, 450, 3, 6, 0, 0, ";", "#X", 0, 59, 100, 482, 3, 6, 0, 0, ";", "#X", 0, 73, 104, 433, 3, 6, 0, 0, ";", "#X", 0, 85, 103, 377, 3, 6, 0, 0, ";", "#X", 32, 73, 124, 707, 9, 10, 0, 0, ";", "#X", 64, 73, 119, 225, 12, 11, 0, 0, ";", "#X", 321, 73, 119, 707, 12, 11, 0, 0, ";", "#X", 338, 61, 124, 570, 9, 10, 0, 0, ";", "#X", 8, 34, 125, 739, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 474, 10, 13, 0, 0, ";", "#X", 0, 43, 124, 482, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 27221, 10, 13, 0, 0, ";", "#X", 8, 46, 120, 11687, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 393, 1, 4, 0, 0, ";", "#X", 0, 61, 123, 426, 1, 4, 0, 0, ";", "#X", 0, 73, 123, 393, 1, 4, 0, 0, ";", "#X", 0, 46, 102, 156964, 3, 6, 0, 0, ";", "#X", 0, 58, 102, 498, 3, 6, 0, 0, ";", "#X", 0, 61, 104, 466, 3, 6, 0, 0, ";", "#X", 0, 73, 100, 482, 3, 6, 0, 0, ";", "#X", 369, 61, 119, 571, 12, 11, 0, 0, ";", "#X", 394, 33, 125, 273, 2, 5, 0, 0, ";", "#X", 8, 33, 123, 185, 1, 4, 0, 0, ";", "#X", 0, 45, 123, 193, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 112, 1, 4, 0, 0, ";", "#X", 0, 76, 123, 120, 1, 4, 0, 0, ";", "#X", 0, 81, 123, 128, 1, 4, 0, 0, ";", "#X", 0, 33, 119, 225, 3, 6, 0, 0, ";", "#X", 0, 45, 122, 257, 3, 6, 0, 0, ";", "#X", 0, 57, 121, 225, 3, 6, 0, 0, ";", "#X", 0, 40, 124, 32, 10, 13, 0, 0, ";", "#X", 40, 40, 123, 345, 10, 13, 0, 0, ";", "#X", 345, 57, 120, 65, 1, 4, 0, 0, ";", "#X", 0, 61, 122, 89, 1, 4, 0, 0, ";", "#X", 0, 64, 122, 89, 1, 4, 0, 0, ";", "#X", 16, 81, 103, 113, 10, 13, 0, 0, ";", "#X", 362, 81, 103, 96, 10, 13, 0, 0, ";", "#X", 8, 57, 121, 72, 1, 4, 0, 0, ";", "#X", 0, 61, 119, 72, 1, 4, 0, 0, ";", "#X", 0, 64, 122, 96, 1, 4, 0, 0, ";", "#X", 361, 81, 104, 97, 10, 13, 0, 0, ";", "#X", 25, 57, 121, 88, 1, 4, 0, 0, ";", "#X", 0, 61, 121, 96, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 112, 1, 4, 0, 0, ";", "#X", 353, 81, 103, 104, 10, 13, 0, 0, ";", "#X", 32, 57, 120, 88, 1, 4, 0, 0, ";", "#X", 0, 61, 120, 104, 1, 4, 0, 0, ";", "#X", 0, 64, 120, 113, 1, 4, 0, 0, ";", "#X", 361, 81, 104, 113, 10, 13, 0, 0, ";", "#X", 25, 57, 121, 88, 1, 4, 0, 0, ";", "#X", 0, 61, 119, 88, 1, 4, 0, 0, ";", "#X", 0, 64, 118, 112, 1, 4, 0, 0, ";", "#X", 361, 81, 104, 112, 10, 13, 0, 0, ";", "#X", 24, 57, 115, 72, 1, 4, 0, 0, ";", "#X", 0, 61, 118, 97, 1, 4, 0, 0, ";", "#X", 0, 64, 119, 97, 1, 4, 0, 0, ";", "#X", 362, 81, 104, 112, 10, 13, 0, 0, ";", "#X", 24, 57, 118, 80, 1, 4, 0, 0, ";", "#X", 0, 61, 118, 96, 1, 4, 0, 0, ";", "#X", 0, 64, 120, 104, 1, 4, 0, 0, ";", "#X", 377, 81, 104, 97, 10, 13, 0, 0, ";", "#X", 8, 57, 122, 89, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 129, 1, 4, 0, 0, ";", "#X", 0, 66, 122, 145, 1, 4, 0, 0, ";", "#X", 0, 74, 119, 313, 8, 9, 0, 0, ";", "#X", 362, 81, 104, 96, 10, 13, 0, 0, ";", "#X", 24, 57, 122, 72, 1, 4, 0, 0, ";", "#X", 0, 61, 121, 88, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 88, 1, 4, 0, 0, ";", "#X", 0, 73, 118, 72, 8, 9, 0, 0, ";", "#X", 193, 57, 117, 48, 1, 4, 0, 0, ";", "#X", 0, 61, 121, 88, 1, 4, 0, 0, ";", "#X", 0, 64, 118, 88, 1, 4, 0, 0, ";", "#X", 0, 73, 119, 88, 8, 9, 0, 0, ";", "#X", 168, 81, 104, 113, 10, 13, 0, 0, ";", "#X", 24, 57, 122, 113, 1, 4, 0, 0, ";", "#X", 0, 60, 122, 113, 1, 4, 0, 0, ";", "#X", 0, 63, 122, 161, 1, 4, 0, 0, ";", "#X", 0, 71, 113, 32, 8, 9, 0, 0, ";", "#X", 0, 72, 117, 81, 8, 9, 0, 0, ";", "#X", 193, 72, 118, 80, 8, 9, 0, 0, ";", "#X", 177, 81, 106, 96, 10, 13, 0, 0, ";", "#X", 16, 57, 123, 104, 1, 4, 0, 0, ";", "#X", 0, 61, 123, 136, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 128, 1, 4, 0, 0, ";", "#X", 0, 73, 119, 72, 8, 9, 0, 0, ";", "#X", 193, 73, 118, 64, 8, 9, 0, 0, ";", "#X", 168, 81, 102, 113, 10, 13, 0, 0, ";", "#X", 24, 57, 123, 89, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 113, 1, 4, 0, 0, ";", "#X", 0, 66, 122, 137, 1, 4, 0, 0, ";", "#X", 0, 74, 118, 73, 8, 9, 0, 0, ";", "#X", 193, 74, 119, 89, 8, 9, 0, 0, ";", "#X", 161, 81, 104, 96, 10, 13, 0, 0, ";", "#X", 32, 57, 122, 72, 1, 4, 0, 0, ";", "#X", 0, 61, 123, 72, 1, 4, 0, 0, ";", "#X", 0, 64, 122, 88, 1, 4, 0, 0, ";", "#X", 0, 73, 119, 80, 8, 9, 0, 0, ";", "#X", 193, 57, 118, 48, 1, 4, 0, 0, ";", "#X", 0, 61, 119, 72, 1, 4, 0, 0, ";", "#X", 0, 64, 122, 72, 1, 4, 0, 0, ";", "#X", 0, 73, 118, 80, 8, 9, 0, 0, ";", "#X", 176, 81, 102, 97, 10, 13, 0, 0, ";", "#X", 16, 57, 121, 217, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 209, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 241, 1, 4, 0, 0, ";", "#X", 0, 72, 118, 306, 8, 9, 0, 0, ";", "#X", 370, 81, 103, 96, 10, 13, 0, 0, ";", "#X", 8, 37, 125, 112, 2, 5, 0, 0, ";", "#X", 8, 88, 121, 72, 6, 2, 0, 0, ";", "#X", 0, 57, 120, 80, 1, 4, 0, 0, ";", "#X", 0, 61, 121, 80, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 64, 1, 4, 0, 0, ";", "#X", 0, 64, 119, 129, 3, 6, 0, 0, ";", "#X", 0, 69, 114, 88, 3, 6, 0, 0, ";", "#X", 0, 73, 112, 88, 3, 6, 0, 0, ";", "#X", 0, 76, 115, 80, 3, 6, 0, 0, ";", "#X", 0, 81, 96, 64, 3, 6, 0, 0, ";", "#X", 0, 76, 120, 72, 7, 8, 0, 0, ";", "#X", 185, 37, 124, 152, 2, 5, 0, 0, ";", "#X", 8, 88, 120, 80, 6, 2, 0, 0, ";", "#X", 0, 57, 118, 88, 1, 4, 0, 0, ";", "#X", 0, 61, 121, 104, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 96, 1, 4, 0, 0, ";", "#X", 0, 64, 119, 176, 3, 6, 0, 0, ";", "#X", 0, 69, 115, 96, 3, 6, 0, 0, ";", "#X", 0, 73, 112, 136, 3, 6, 0, 0, ";", "#X", 0, 76, 117, 144, 3, 6, 0, 0, ";", "#X", 0, 81, 112, 104, 3, 6, 0, 0, ";", "#X", 0, 76, 119, 80, 7, 8, 0, 0, ";", "#X", 185, 38, 125, 329, 2, 5, 0, 0, ";", "#X", 0, 81, 103, 88, 10, 13, 0, 0, ";", "#X", 8, 93, 122, 321, 6, 2, 0, 0, ";", "#X", 0, 57, 123, 200, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 249, 1, 4, 0, 0, ";", "#X", 0, 66, 123, 273, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 224, 1, 4, 0, 0, ";", "#X", 0, 62, 119, 297, 3, 6, 0, 0, ";", "#X", 0, 66, 110, 361, 3, 6, 0, 0, ";", "#X", 0, 69, 121, 369, 3, 6, 0, 0, ";", "#X", 0, 74, 121, 257, 3, 6, 0, 0, ";", "#X", 0, 78, 118, 345, 3, 6, 0, 0, ";", "#X", 0, 81, 118, 361, 3, 6, 0, 0, ";", "#X", 0, 81, 121, 321, 7, 8, 0, 0, ";", "#X", 377, 37, 124, 96, 2, 5, 0, 0, ";", "#X", 8, 88, 120, 80, 6, 2, 0, 0, ";", "#X", 0, 57, 115, 56, 1, 4, 0, 0, ";", "#X", 0, 61, 118, 72, 1, 4, 0, 0, ";", "#X", 0, 64, 118, 48, 1, 4, 0, 0, ";", "#X", 0, 61, 108, 129, 3, 6, 0, 0, ";", "#X", 0, 64, 112, 80, 3, 6, 0, 0, ";", "#X", 0, 69, 114, 80, 3, 6, 0, 0, ";", "#X", 0, 73, 115, 80, 3, 6, 0, 0, ";", "#X", 0, 76, 116, 96, 3, 6, 0, 0, ";", "#X", 0, 81, 18, 24, 3, 6, 0, 0, ";", "#X", 0, 76, 119, 80, 7, 8, 0, 0, ";", "#X", 24, 81, 104, 81, 10, 13, 0, 0, ";", "#X", 161, 37, 125, 112, 2, 5, 0, 0, ";", "#X", 8, 88, 122, 88, 6, 2, 0, 0, ";", "#X", 0, 57, 113, 88, 1, 4, 0, 0, ";", "#X", 0, 61, 118, 120, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 136, 1, 4, 0, 0, ";", "#X", 0, 61, 118, 144, 3, 6, 0, 0, ";", "#X", 0, 64, 108, 217, 3, 6, 0, 0, ";", "#X", 0, 69, 117, 104, 3, 6, 0, 0, ";", "#X", 0, 73, 115, 128, 3, 6, 0, 0, ";", "#X", 0, 76, 108, 128, 3, 6, 0, 0, ";", "#X", 0, 81, 114, 96, 3, 6, 0, 0, ";", "#X", 0, 76, 120, 88, 7, 8, 0, 0, ";", "#X", 185, 38, 125, 313, 2, 5, 0, 0, ";", "#X", 8, 93, 122, 345, 6, 2, 0, 0, ";", "#X", 0, 57, 123, 265, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 273, 1, 4, 0, 0, ";", "#X", 0, 66, 123, 313, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 273, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 329, 3, 6, 0, 0, ";", "#X", 0, 66, 119, 337, 3, 6, 0, 0, ";", "#X", 0, 69, 119, 466, 3, 6, 0, 0, ";", "#X", 0, 74, 120, 200, 3, 6, 0, 0, ";", "#X", 0, 78, 119, 321, 3, 6, 0, 0, ";", "#X", 0, 81, 119, 321, 3, 6, 0, 0, ";", "#X", 0, 81, 121, 345, 7, 8, 0, 0, ";", "#X", 32, 81, 103, 88, 10, 13, 0, 0, ";", "#X", 345, 37, 125, 97, 2, 5, 0, 0, ";", "#X", 8, 88, 121, 89, 6, 2, 0, 0, ";", "#X", 0, 57, 117, 64, 1, 4, 0, 0, ";", "#X", 0, 61, 121, 81, 1, 4, 0, 0, ";", "#X", 0, 64, 122, 72, 1, 4, 0, 0, ";", "#X", 0, 61, 113, 97, 3, 6, 0, 0, ";", "#X", 0, 64, 117, 121, 3, 6, 0, 0, ";", "#X", 0, 73, 114, 105, 3, 6, 0, 0, ";", "#X", 0, 76, 112, 81, 3, 6, 0, 0, ";", "#X", 0, 76, 120, 89, 7, 8, 0, 0, ";", "#X", 32, 81, 105, 89, 10, 13, 0, 0, ";", "#X", 153, 37, 125, 145, 2, 5, 0, 0, ";", "#X", 8, 88, 120, 112, 6, 2, 0, 0, ";", "#X", 0, 57, 117, 96, 1, 4, 0, 0, ";", "#X", 0, 61, 121, 104, 1, 4, 0, 0, ";", "#X", 0, 64, 122, 88, 1, 4, 0, 0, ";", "#X", 0, 69, 122, 120, 1, 4, 0, 0, ";", "#X", 0, 61, 107, 112, 3, 6, 0, 0, ";", "#X", 0, 64, 120, 104, 3, 6, 0, 0, ";", "#X", 0, 69, 115, 72, 3, 6, 0, 0, ";", "#X", 0, 73, 116, 104, 3, 6, 0, 0, ";", "#X", 0, 76, 114, 72, 3, 6, 0, 0, ";", "#X", 0, 81, 101, 32, 3, 6, 0, 0, ";", "#X", 0, 76, 119, 112, 7, 8, 0, 0, ";", "#X", 185, 36, 123, 120, 2, 5, 0, 0, ";", "#X", 8, 87, 121, 96, 6, 2, 0, 0, ";", "#X", 0, 57, 121, 72, 1, 4, 0, 0, ";", "#X", 0, 60, 121, 96, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 104, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 88, 1, 4, 0, 0, ";", "#X", 0, 60, 113, 104, 3, 6, 0, 0, ";", "#X", 0, 63, 116, 96, 3, 6, 0, 0, ";", "#X", 0, 69, 111, 72, 3, 6, 0, 0, ";", "#X", 0, 72, 118, 96, 3, 6, 0, 0, ";", "#X", 0, 75, 118, 88, 3, 6, 0, 0, ";", "#X", 0, 75, 120, 96, 7, 8, 0, 0, ";", "#X", 32, 81, 103, 104, 10, 13, 0, 0, ";", "#X", 152, 36, 122, 153, 2, 5, 0, 0, ";", "#X", 8, 87, 119, 113, 6, 2, 0, 0, ";", "#X", 0, 75, 118, 113, 7, 8, 0, 0, ";", "#X", 1, 57, 122, 88, 1, 4, 0, 0, ";", "#X", 0, 60, 117, 88, 1, 4, 0, 0, ";", "#X", 0, 63, 122, 112, 1, 4, 0, 0, ";", "#X", 0, 69, 122, 96, 1, 4, 0, 0, ";", "#X", 0, 60, 112, 120, 3, 6, 0, 0, ";", "#X", 0, 63, 115, 136, 3, 6, 0, 0, ";", "#X", 0, 69, 113, 56, 3, 6, 0, 0, ";", "#X", 0, 72, 115, 80, 3, 6, 0, 0, ";", "#X", 0, 75, 114, 96, 3, 6, 0, 0, ";", "#X", 184, 37, 125, 177, 2, 5, 0, 0, ";", "#X", 8, 88, 121, 153, 6, 2, 0, 0, ";", "#X", 0, 57, 123, 129, 1, 4, 0, 0, ";", "#X", 0, 61, 123, 153, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 145, 1, 4, 0, 0, ";", "#X", 0, 69, 121, 97, 1, 4, 0, 0, ";", "#X", 0, 61, 116, 209, 3, 6, 0, 0, ";", "#X", 0, 64, 112, 225, 3, 6, 0, 0, ";", "#X", 0, 69, 119, 137, 3, 6, 0, 0, ";", "#X", 0, 73, 116, 169, 3, 6, 0, 0, ";", "#X", 0, 76, 118, 161, 3, 6, 0, 0, ";", "#X", 0, 76, 119, 153, 7, 8, 0, 0, ";", "#X", 24, 81, 102, 97, 10, 13, 0, 0, ";", "#X", 354, 38, 125, 249, 2, 5, 0, 0, ";", "#X", 8, 90, 121, 193, 6, 2, 0, 0, ";", "#X", 0, 57, 123, 144, 1, 4, 0, 0, ";", "#X", 0, 62, 122, 160, 1, 4, 0, 0, ";", "#X", 0, 66, 122, 217, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 185, 1, 4, 0, 0, ";", "#X", 0, 62, 119, 201, 3, 6, 0, 0, ";", "#X", 0, 66, 111, 177, 3, 6, 0, 0, ";", "#X", 0, 69, 120, 96, 3, 6, 0, 0, ";", "#X", 0, 74, 119, 128, 3, 6, 0, 0, ";", "#X", 0, 78, 119, 168, 3, 6, 0, 0, ";", "#X", 0, 78, 120, 193, 7, 8, 0, 0, ";", "#X", 24, 81, 103, 96, 10, 13, 0, 0, ";", "#X", 353, 37, 125, 185, 2, 5, 0, 0, ";", "#X", 8, 88, 122, 161, 6, 2, 0, 0, ";", "#X", 0, 57, 123, 177, 1, 4, 0, 0, ";", "#X", 0, 61, 123, 177, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 177, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 201, 1, 4, 0, 0, ";", "#X", 0, 61, 119, 201, 3, 6, 0, 0, ";", "#X", 0, 64, 120, 193, 3, 6, 0, 0, ";", "#X", 0, 69, 122, 129, 3, 6, 0, 0, ";", "#X", 0, 73, 118, 153, 3, 6, 0, 0, ";", "#X", 0, 76, 122, 177, 3, 6, 0, 0, ";", "#X", 0, 76, 121, 161, 7, 8, 0, 0, ";", "#X", 32, 81, 104, 113, 10, 13, 0, 0, ";", "#X", 346, 36, 125, 120, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 64, 10, 13, 0, 0, ";", "#X", 0, 45, 123, 64, 10, 13, 0, 0, ";", "#X", 0, 47, 118, 32, 10, 13, 0, 0, ";", "#X", 8, 48, 120, 80, 1, 4, 0, 0, ";", "#X", 0, 55, 123, 88, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 64, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 64, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 72, 1, 4, 0, 0, ";", "#X", 0, 60, 120, 64, 3, 6, 0, 0, ";", "#X", 0, 64, 119, 72, 3, 6, 0, 0, ";", "#X", 0, 67, 119, 64, 3, 6, 0, 0, ";", "#X", 0, 72, 120, 64, 3, 6, 0, 0, ";", "#X", 0, 76, 118, 72, 3, 6, 0, 0, ";", "#X", 0, 36, 122, 64, 11, 14, 0, 0, ";", "#X", 0, 48, 118, 72, 11, 14, 0, 0, ";", "#X", 24, 81, 102, 80, 10, 13, 0, 0, ";", "#X", 8, 88, 113, 16, 4, 7, 0, 0, ";", "#X", 16, 76, 113, 88, 4, 7, 0, 0, ";", "#X", 113, 55, 119, 128, 1, 4, 0, 0, ";", "#X", 8, 48, 118, 104, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 88, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 112, 1, 4, 0, 0, ";", "#X", 8, 64, 123, 96, 1, 4, 0, 0, ";", "#X", 8, 36, 120, 120, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 88, 10, 13, 0, 0, ";", "#X", 0, 45, 123, 96, 10, 13, 0, 0, ";", "#X", 8, 60, 116, 96, 3, 6, 0, 0, ";", "#X", 0, 64, 108, 104, 3, 6, 0, 0, ";", "#X", 0, 67, 116, 80, 3, 6, 0, 0, ";", "#X", 0, 72, 114, 72, 3, 6, 0, 0, ";", "#X", 0, 76, 116, 88, 3, 6, 0, 0, ";", "#X", 0, 36, 122, 88, 11, 14, 0, 0, ";", "#X", 0, 48, 117, 72, 11, 14, 0, 0, ";", "#X", 24, 76, 113, 88, 4, 7, 0, 0, ";", "#X", 0, 88, 113, 72, 4, 7, 0, 0, ";", "#X", 0, 81, 99, 72, 10, 13, 0, 0, ";", "#X", 144, 60, 122, 97, 1, 4, 0, 0, ";", "#X", 8, 48, 123, 113, 1, 4, 0, 0, ";", "#X", 0, 55, 121, 121, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 105, 1, 4, 0, 0, ";", "#X", 8, 64, 123, 89, 1, 4, 0, 0, ";", "#X", 0, 36, 116, 161, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 89, 10, 13, 0, 0, ";", "#X", 0, 45, 124, 89, 10, 13, 0, 0, ";", "#X", 0, 81, 104, 89, 10, 13, 0, 0, ";", "#X", 8, 60, 115, 113, 3, 6, 0, 0, ";", "#X", 0, 64, 117, 113, 3, 6, 0, 0, ";", "#X", 0, 67, 113, 81, 3, 6, 0, 0, ";", "#X", 0, 72, 116, 73, 3, 6, 0, 0, ";", "#X", 0, 76, 113, 89, 3, 6, 0, 0, ";", "#X", 0, 88, 113, 8, 4, 7, 0, 0, ";", "#X", 0, 36, 120, 73, 11, 14, 0, 0, ";", "#X", 0, 48, 117, 73, 11, 14, 0, 0, ";", "#X", 17, 76, 113, 72, 4, 7, 0, 0, ";", "#X", 144, 48, 109, 153, 1, 4, 0, 0, ";", "#X", 8, 55, 122, 121, 1, 4, 0, 0, ";", "#X", 0, 60, 122, 105, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 113, 1, 4, 0, 0, ";", "#X", 0, 81, 110, 88, 10, 13, 0, 0, ";", "#X", 8, 64, 122, 129, 1, 4, 0, 0, ";", "#X", 0, 76, 113, 97, 4, 7, 0, 0, ";", "#X", 0, 88, 113, 97, 4, 7, 0, 0, ";", "#X", 8, 31, 125, 145, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 97, 10, 13, 0, 0, ";", "#X", 0, 45, 122, 129, 10, 13, 0, 0, ";", "#X", 8, 60, 115, 153, 3, 6, 0, 0, ";", "#X", 0, 64, 118, 137, 3, 6, 0, 0, ";", "#X", 0, 67, 119, 105, 3, 6, 0, 0, ";", "#X", 0, 72, 120, 129, 3, 6, 0, 0, ";", "#X", 0, 76, 117, 137, 3, 6, 0, 0, ";", "#X", 0, 36, 120, 73, 11, 14, 0, 0, ";", "#X", 0, 48, 118, 73, 11, 14, 0, 0, ";", "#X", 185, 47, 120, 145, 1, 4, 0, 0, ";", "#X", 0, 35, 125, 201, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 169, 10, 13, 0, 0, ";", "#X", 0, 43, 124, 185, 10, 13, 0, 0, ";", "#X", 8, 55, 123, 145, 1, 4, 0, 0, ";", "#X", 0, 59, 123, 153, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 161, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 161, 1, 4, 0, 0, ";", "#X", 0, 59, 118, 185, 3, 6, 0, 0, ";", "#X", 0, 62, 119, 177, 3, 6, 0, 0, ";", "#X", 0, 67, 119, 137, 3, 6, 0, 0, ";", "#X", 0, 71, 121, 145, 3, 6, 0, 0, ";", "#X", 0, 74, 119, 169, 3, 6, 0, 0, ";", "#X", 0, 81, 114, 88, 10, 13, 0, 0, ";", "#X", 0, 36, 119, 80, 11, 14, 0, 0, ";", "#X", 0, 48, 120, 80, 11, 14, 0, 0, ";", "#X", 8, 74, 113, 112, 4, 7, 0, 0, ";", "#X", 0, 86, 113, 112, 4, 7, 0, 0, ";", "#X", 361, 47, 120, 193, 1, 4, 0, 0, ";", "#X", 8, 55, 123, 161, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 153, 1, 4, 0, 0, ";", "#X", 0, 35, 125, 193, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 177, 10, 13, 0, 0, ";", "#X", 0, 43, 123, 185, 10, 13, 0, 0, ";", "#X", 0, 45, 121, 57, 10, 13, 0, 0, ";", "#X", 9, 59, 123, 120, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 176, 1, 4, 0, 0, ";", "#X", 0, 59, 115, 144, 3, 6, 0, 0, ";", "#X", 0, 62, 119, 128, 3, 6, 0, 0, ";", "#X", 0, 67, 117, 144, 3, 6, 0, 0, ";", "#X", 0, 71, 121, 96, 3, 6, 0, 0, ";", "#X", 0, 74, 119, 176, 3, 6, 0, 0, ";", "#X", 0, 81, 109, 96, 10, 13, 0, 0, ";", "#X", 0, 36, 122, 80, 11, 14, 0, 0, ";", "#X", 0, 48, 122, 72, 11, 14, 0, 0, ";", "#X", 8, 74, 113, 144, 4, 7, 0, 0, ";", "#X", 0, 86, 113, 128, 4, 7, 0, 0, ";", "#X", 361, 53, 123, 129, 1, 4, 0, 0, ";", "#X", 8, 34, 125, 193, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 64, 10, 13, 0, 0, ";", "#X", 0, 43, 123, 88, 10, 13, 0, 0, ";", "#X", 0, 81, 108, 72, 10, 13, 0, 0, ";", "#X", 8, 46, 122, 289, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 104, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 96, 1, 4, 0, 0, ";", "#X", 0, 58, 121, 129, 3, 6, 0, 0, ";", "#X", 0, 65, 114, 104, 3, 6, 0, 0, ";", "#X", 0, 70, 118, 88, 3, 6, 0, 0, ";", "#X", 0, 74, 122, 104, 3, 6, 0, 0, ";", "#X", 0, 77, 116, 96, 3, 6, 0, 0, ";", "#X", 0, 86, 113, 8, 4, 7, 0, 0, ";", "#X", 0, 36, 119, 80, 11, 14, 0, 0, ";", "#X", 0, 48, 120, 72, 11, 14, 0, 0, ";", "#X", 8, 65, 123, 113, 1, 4, 0, 0, ";", "#X", 8, 74, 113, 80, 4, 7, 0, 0, ";", "#X", 145, 62, 115, 112, 1, 4, 0, 0, ";", "#X", 8, 53, 122, 128, 1, 4, 0, 0, ";", "#X", 0, 58, 120, 120, 1, 4, 0, 0, ";", "#X", 0, 81, 106, 80, 10, 13, 0, 0, ";", "#X", 8, 46, 121, 305, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 112, 1, 4, 0, 0, ";", "#X", 8, 33, 125, 128, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 80, 10, 13, 0, 0, ";", "#X", 0, 43, 123, 88, 10, 13, 0, 0, ";", "#X", 8, 58, 115, 136, 3, 6, 0, 0, ";", "#X", 0, 65, 114, 128, 3, 6, 0, 0, ";", "#X", 0, 70, 120, 96, 3, 6, 0, 0, ";", "#X", 0, 74, 104, 80, 3, 6, 0, 0, ";", "#X", 0, 77, 117, 120, 3, 6, 0, 0, ";", "#X", 0, 74, 113, 80, 4, 7, 0, 0, ";", "#X", 0, 86, 113, 72, 4, 7, 0, 0, ";", "#X", 0, 36, 121, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 118, 72, 11, 14, 0, 0, ";", "#X", 152, 81, 108, 89, 10, 13, 0, 0, ";", "#X", 8, 62, 123, 113, 1, 4, 0, 0, ";", "#X", 9, 53, 122, 281, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 120, 1, 4, 0, 0, ";", "#X", 0, 65, 113, 128, 1, 4, 0, 0, ";", "#X", 8, 86, 113, 16, 4, 7, 0, 0, ";", "#X", 8, 46, 120, 337, 1, 4, 0, 0, ";", "#X", 0, 32, 125, 176, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 88, 10, 13, 0, 0, ";", "#X", 0, 43, 123, 88, 10, 13, 0, 0, ";", "#X", 8, 65, 105, 160, 3, 6, 0, 0, ";", "#X", 0, 70, 105, 96, 3, 6, 0, 0, ";", "#X", 0, 74, 105, 80, 3, 6, 0, 0, ";", "#X", 0, 77, 105, 104, 3, 6, 0, 0, ";", "#X", 0, 74, 113, 72, 4, 7, 0, 0, ";", "#X", 0, 36, 122, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 119, 56, 11, 14, 0, 0, ";", "#X", 152, 81, 111, 89, 10, 13, 0, 0, ";", "#X", 8, 58, 122, 129, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 105, 1, 4, 0, 0, ";", "#X", 8, 65, 117, 121, 1, 4, 0, 0, ";", "#X", 8, 46, 121, 14739, 1, 4, 0, 0, ";", "#X", 0, 66, 120, 97, 1, 4, 0, 0, ";", "#X", 0, 74, 113, 73, 4, 7, 0, 0, ";", "#X", 0, 86, 113, 89, 4, 7, 0, 0, ";", "#X", 8, 31, 125, 145, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 105, 10, 13, 0, 0, ";", "#X", 0, 43, 123, 113, 10, 13, 0, 0, ";", "#X", 8, 58, 119, 145, 3, 6, 0, 0, ";", "#X", 0, 70, 116, 105, 3, 6, 0, 0, ";", "#X", 0, 74, 111, 81, 3, 6, 0, 0, ";", "#X", 0, 77, 118, 137, 3, 6, 0, 0, ";", "#X", 0, 36, 122, 81, 11, 14, 0, 0, ";", "#X", 0, 48, 119, 73, 11, 14, 0, 0, ";", "#X", 161, 81, 112, 104, 10, 13, 0, 0, ";", "#X", 16, 66, 123, 209, 1, 4, 0, 0, ";", "#X", 8, 50, 122, 217, 1, 4, 0, 0, ";", "#X", 0, 54, 123, 201, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 185, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 225, 1, 4, 0, 0, ";", "#X", 0, 30, 125, 257, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 169, 10, 13, 0, 0, ";", "#X", 0, 45, 124, 193, 10, 13, 0, 0, ";", "#X", 8, 50, 122, 177, 3, 6, 0, 0, ";", "#X", 0, 62, 123, 225, 3, 6, 0, 0, ";", "#X", 0, 72, 117, 201, 3, 6, 0, 0, ";", "#X", 0, 74, 117, 161, 3, 6, 0, 0, ";", "#X", 0, 78, 118, 185, 3, 6, 0, 0, ";", "#X", 0, 78, 113, 8, 4, 7, 0, 0, ";", "#X", 0, 36, 122, 89, 11, 14, 0, 0, ";", "#X", 0, 48, 120, 80, 11, 14, 0, 0, ";", "#X", 16, 90, 113, 97, 4, 7, 0, 0, ";", "#X", 338, 81, 112, 104, 10, 13, 0, 0, ";", "#X", 24, 26, 125, 233, 2, 5, 0, 0, ";", "#X", 0, 28, 125, 56, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 168, 10, 13, 0, 0, ";", "#X", 0, 43, 124, 168, 10, 13, 0, 0, ";", "#X", 8, 50, 122, 192, 3, 6, 0, 0, ";", "#X", 0, 62, 120, 144, 3, 6, 0, 0, ";", "#X", 0, 72, 121, 160, 3, 6, 0, 0, ";", "#X", 0, 74, 122, 168, 3, 6, 0, 0, ";", "#X", 0, 78, 119, 176, 3, 6, 0, 0, ";", "#X", 0, 36, 120, 96, 11, 14, 0, 0, ";", "#X", 0, 48, 120, 80, 11, 14, 0, 0, ";", "#X", 8, 78, 113, 112, 4, 7, 0, 0, ";", "#X", 0, 90, 113, 112, 4, 7, 0, 0, ";", "#X", 8, 50, 122, 217, 1, 4, 0, 0, ";", "#X", 0, 54, 123, 184, 1, 4, 0, 0, ";", "#X", 8, 60, 123, 168, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 193, 1, 4, 0, 0, ";", "#X", 0, 66, 123, 217, 1, 4, 0, 0, ";", "#X", 353, 31, 125, 273, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 321, 10, 13, 0, 0, ";", "#X", 0, 40, 124, 321, 10, 13, 0, 0, ";", "#X", 8, 43, 121, 193, 3, 6, 0, 0, ";", "#X", 0, 55, 122, 201, 3, 6, 0, 0, ";", "#X", 0, 71, 122, 169, 3, 6, 0, 0, ";", "#X", 0, 74, 121, 193, 3, 6, 0, 0, ";", "#X", 0, 79, 119, 201, 3, 6, 0, 0, ";", "#X", 0, 81, 117, 73, 10, 13, 0, 0, ";", "#X", 0, 36, 122, 81, 11, 14, 0, 0, ";", "#X", 0, 48, 120, 89, 11, 14, 0, 0, ";", "#X", 8, 50, 123, 289, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 273, 1, 4, 0, 0, ";", "#X", 0, 79, 113, 8, 4, 7, 0, 0, ";", "#X", 0, 91, 113, 129, 4, 7, 0, 0, ";", "#X", 8, 43, 123, 273, 1, 4, 0, 0, ";", "#X", 0, 55, 123, 273, 1, 4, 0, 0, ";", "#X", 0, 59, 123, 257, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 249, 1, 4, 0, 0, ";", "#X", 32, 66, 101, 25, 1, 4, 0, 0, ";", "#X", 338, 59, 119, 112, 8, 9, 0, 0, ";", "#X", 0, 67, 119, 96, 8, 9, 0, 0, ";", "#X", 193, 59, 119, 192, 8, 9, 0, 0, ";", "#X", 0, 67, 119, 88, 8, 9, 0, 0, ";", "#X", 192, 60, 120, 233, 8, 9, 0, 0, ";", "#X", 0, 67, 120, 273, 8, 9, 0, 0, ";", "#X", 193, 59, 120, 137, 8, 9, 0, 0, ";", "#X", 193, 50, 116, 72, 3, 6, 0, 0, ";", "#X", 0, 62, 114, 72, 3, 6, 0, 0, ";", "#X", 0, 62, 113, 72, 4, 7, 0, 0, ";", "#X", 0, 74, 113, 96, 4, 7, 0, 0, ";", "#X", 193, 50, 113, 48, 3, 6, 0, 0, ";", "#X", 0, 62, 114, 56, 3, 6, 0, 0, ";", "#X", 0, 62, 113, 104, 4, 7, 0, 0, ";", "#X", 0, 74, 113, 104, 4, 7, 0, 0, ";", "#X", 192, 52, 119, 169, 3, 6, 0, 0, ";", "#X", 0, 64, 119, 185, 3, 6, 0, 0, ";", "#X", 0, 64, 113, 185, 4, 7, 0, 0, ";", "#X", 0, 76, 113, 185, 4, 7, 0, 0, ";", "#X", 193, 50, 115, 89, 3, 6, 0, 0, ";", "#X", 0, 62, 114, 80, 3, 6, 0, 0, ";", "#X", 0, 62, 113, 193, 4, 7, 0, 0, ";", "#X", 0, 74, 113, 169, 4, 7, 0, 0, ";", "#X", 193, 59, 120, 96, 8, 9, 0, 0, ";", "#X", 0, 67, 120, 80, 8, 9, 0, 0, ";", "#X", 193, 59, 120, 192, 8, 9, 0, 0, ";", "#X", 0, 67, 120, 80, 8, 9, 0, 0, ";", "#X", 192, 60, 120, 185, 8, 9, 0, 0, ";", "#X", 0, 67, 120, 193, 8, 9, 0, 0, ";", "#X", 193, 59, 120, 113, 8, 9, 0, 0, ";", "#X", 193, 50, 116, 56, 3, 6, 0, 0, ";", "#X", 0, 62, 118, 64, 3, 6, 0, 0, ";", "#X", 0, 60, 113, 112, 4, 7, 0, 0, ";", "#X", 0, 74, 113, 88, 4, 7, 0, 0, ";", "#X", 193, 50, 116, 64, 3, 6, 0, 0, ";", "#X", 0, 62, 116, 72, 3, 6, 0, 0, ";", "#X", 0, 74, 113, 104, 4, 7, 0, 0, ";", "#X", 193, 52, 119, 128, 3, 6, 0, 0, ";", "#X", 0, 64, 119, 144, 3, 6, 0, 0, ";", "#X", 0, 64, 113, 184, 4, 7, 0, 0, ";", "#X", 0, 76, 113, 184, 4, 7, 0, 0, ";", "#X", 192, 50, 116, 81, 3, 6, 0, 0, ";", "#X", 0, 62, 119, 73, 3, 6, 0, 0, ";", "#X", 0, 62, 113, 129, 4, 7, 0, 0, ";", "#X", 0, 74, 113, 129, 4, 7, 0, 0, ";", "#X", 193, 62, 119, 40, 3, 6, 0, 0, ";", "#X", 0, 74, 119, 72, 3, 6, 0, 0, ";", "#X", 0, 55, 120, 105, 8, 9, 0, 0, ";", "#X", 0, 59, 120, 105, 8, 9, 0, 0, ";", "#X", 0, 67, 120, 96, 8, 9, 0, 0, ";", "#X", 193, 62, 119, 88, 3, 6, 0, 0, ";", "#X", 0, 74, 121, 136, 3, 6, 0, 0, ";", "#X", 0, 55, 120, 144, 8, 9, 0, 0, ";", "#X", 0, 59, 119, 185, 8, 9, 0, 0, ";", "#X", 0, 67, 120, 112, 8, 9, 0, 0, ";", "#X", 193, 64, 121, 208, 3, 6, 0, 0, ";", "#X", 0, 76, 116, 168, 3, 6, 0, 0, ";", "#X", 0, 57, 120, 192, 8, 9, 0, 0, ";", "#X", 0, 60, 119, 184, 8, 9, 0, 0, ";", "#X", 0, 67, 120, 739, 8, 9, 0, 0, ";", "#X", 192, 62, 119, 153, 3, 6, 0, 0, ";", "#X", 0, 74, 117, 169, 3, 6, 0, 0, ";", "#X", 0, 55, 119, 169, 8, 9, 0, 0, ";", "#X", 0, 59, 111, 217, 8, 9, 0, 0, ";", "#X", 193, 60, 119, 137, 3, 6, 0, 0, ";", "#X", 0, 72, 120, 137, 3, 6, 0, 0, ";", "#X", 0, 54, 119, 113, 8, 9, 0, 0, ";", "#X", 0, 57, 119, 217, 8, 9, 0, 0, ";", "#X", 193, 59, 119, 145, 3, 6, 0, 0, ";", "#X", 0, 71, 119, 120, 3, 6, 0, 0, ";", "#X", 0, 52, 120, 193, 8, 9, 0, 0, ";", "#X", 0, 55, 120, 161, 8, 9, 0, 0, ";", "#X", 193, 57, 119, 176, 3, 6, 0, 0, ";", "#X", 0, 69, 120, 120, 3, 6, 0, 0, ";", "#X", 0, 50, 120, 168, 8, 9, 0, 0, ";", "#X", 0, 54, 120, 193, 8, 9, 0, 0, ";", "#X", 0, 62, 120, 233, 8, 9, 0, 0, ";", "#X", 0, 66, 120, 209, 8, 9, 0, 0, ";", "#X", 385, 84, 119, 121, 6, 2, 0, 0, ";", "#X", 0, 72, 113, 129, 4, 7, 0, 0, ";", "#X", 0, 72, 117, 121, 7, 8, 0, 0, ";", "#X", 0, 72, 118, 121, 8, 9, 0, 0, ";", "#X", 193, 84, 119, 96, 6, 2, 0, 0, ";", "#X", 0, 72, 113, 145, 4, 7, 0, 0, ";", "#X", 0, 72, 117, 96, 7, 8, 0, 0, ";", "#X", 0, 72, 118, 96, 8, 9, 0, 0, ";", "#X", 193, 84, 119, 1213, 6, 2, 0, 0, ";", "#X", 0, 72, 113, 185, 4, 7, 0, 0, ";", "#X", 0, 72, 117, 1213, 7, 8, 0, 0, ";", "#X", 0, 72, 118, 1213, 8, 9, 0, 0, ";", "#X", 193, 81, 119, 1542, 6, 2, 0, 0, ";", "#X", 0, 69, 113, 377, 4, 7, 0, 0, ";", "#X", 0, 69, 117, 1542, 7, 8, 0, 0, ";", "#X", 0, 69, 118, 1542, 8, 9, 0, 0, ";", "#X", 385, 77, 119, 1197, 6, 2, 0, 0, ";", "#X", 0, 65, 113, 378, 4, 7, 0, 0, ";", "#X", 0, 65, 117, 1197, 7, 8, 0, 0, ";", "#X", 0, 65, 118, 1197, 8, 9, 0, 0, ";", "#X", 386, 74, 120, 827, 6, 2, 0, 0, ";", "#X", 0, 62, 113, 377, 4, 7, 0, 0, ";", "#X", 0, 62, 119, 827, 7, 8, 0, 0, ";", "#X", 0, 62, 119, 827, 8, 9, 0, 0, ";", "#X", 385, 72, 120, 506, 6, 2, 0, 0, ";", "#X", 0, 60, 113, 394, 4, 7, 0, 0, ";", "#X", 0, 60, 118, 506, 7, 8, 0, 0, ";", "#X", 0, 60, 119, 506, 8, 9, 0, 0, ";", "#X", 579, 61, 113, 120, 1, 4, 0, 0, ";", "#X", 0, 65, 113, 96, 1, 4, 0, 0, ";", "#X", 0, 68, 113, 88, 1, 4, 0, 0, ";", "#X", 0, 73, 113, 96, 1, 4, 0, 0, ";", "#X", 0, 49, 116, 1630, 3, 6, 0, 0, ";", "#X", 0, 56, 113, 88, 3, 6, 0, 0, ";", "#X", 0, 61, 113, 80, 3, 6, 0, 0, ";", "#X", 385, 60, 114, 80, 1, 4, 0, 0, ";", "#X", 0, 64, 114, 64, 1, 4, 0, 0, ";", "#X", 0, 67, 114, 64, 1, 4, 0, 0, ";", "#X", 0, 72, 114, 80, 1, 4, 0, 0, ";", "#X", 0, 48, 103, 64, 3, 6, 0, 0, ";", "#X", 0, 55, 107, 64, 3, 6, 0, 0, ";", "#X", 0, 60, 111, 72, 3, 6, 0, 0, ";", "#X", 193, 60, 114, 80, 1, 4, 0, 0, ";", "#X", 0, 64, 114, 64, 1, 4, 0, 0, ";", "#X", 0, 67, 114, 72, 1, 4, 0, 0, ";", "#X", 0, 72, 114, 72, 1, 4, 0, 0, ";", "#X", 0, 48, 113, 72, 3, 6, 0, 0, ";", "#X", 0, 55, 111, 56, 3, 6, 0, 0, ";", "#X", 0, 60, 108, 72, 3, 6, 0, 0, ";", "#X", 193, 59, 114, 112, 1, 4, 0, 0, ";", "#X", 0, 63, 114, 72, 1, 4, 0, 0, ";", "#X", 0, 66, 114, 128, 1, 4, 0, 0, ";", "#X", 0, 71, 114, 120, 1, 4, 0, 0, ";", "#X", 0, 47, 117, 72, 3, 6, 0, 0, ";", "#X", 0, 54, 117, 64, 3, 6, 0, 0, ";", "#X", 0, 59, 118, 64, 3, 6, 0, 0, ";", "#X", 385, 60, 114, 161, 1, 4, 0, 0, ";", "#X", 0, 64, 114, 80, 1, 4, 0, 0, ";", "#X", 0, 67, 114, 129, 1, 4, 0, 0, ";", "#X", 0, 72, 114, 121, 1, 4, 0, 0, ";", "#X", 0, 48, 114, 89, 3, 6, 0, 0, ";", "#X", 0, 55, 116, 72, 3, 6, 0, 0, ";", "#X", 0, 60, 119, 80, 3, 6, 0, 0, ";", "#X", 386, 61, 114, 152, 1, 4, 0, 0, ";", "#X", 0, 65, 114, 104, 1, 4, 0, 0, ";", "#X", 0, 68, 114, 104, 1, 4, 0, 0, ";", "#X", 0, 73, 114, 120, 1, 4, 0, 0, ";", "#X", 0, 49, 116, 9277, 3, 6, 0, 0, ";", "#X", 0, 56, 117, 80, 3, 6, 0, 0, ";", "#X", 0, 61, 118, 80, 3, 6, 0, 0, ";", "#X", 385, 60, 114, 81, 1, 4, 0, 0, ";", "#X", 0, 64, 114, 56, 1, 4, 0, 0, ";", "#X", 0, 67, 114, 73, 1, 4, 0, 0, ";", "#X", 0, 72, 114, 97, 1, 4, 0, 0, ";", "#X", 0, 48, 113, 73, 3, 6, 0, 0, ";", "#X", 0, 55, 113, 73, 3, 6, 0, 0, ";", "#X", 0, 60, 114, 81, 3, 6, 0, 0, ";", "#X", 193, 60, 114, 88, 1, 4, 0, 0, ";", "#X", 0, 64, 114, 40, 1, 4, 0, 0, ";", "#X", 0, 67, 114, 88, 1, 4, 0, 0, ";", "#X", 0, 72, 114, 88, 1, 4, 0, 0, ";", "#X", 0, 48, 104, 72, 3, 6, 0, 0, ";", "#X", 0, 55, 100, 48, 3, 6, 0, 0, ";", "#X", 0, 60, 110, 64, 3, 6, 0, 0, ";", "#X", 193, 59, 114, 345, 1, 4, 0, 0, ";", "#X", 0, 63, 114, 193, 1, 4, 0, 0, ";", "#X", 0, 66, 114, 225, 1, 4, 0, 0, ";", "#X", 0, 71, 114, 225, 1, 4, 0, 0, ";", "#X", 0, 47, 118, 361, 3, 6, 0, 0, ";", "#X", 0, 54, 116, 329, 3, 6, 0, 0, ";", "#X", 0, 59, 114, 337, 3, 6, 0, 0, ";", "#X", 385, 60, 122, 153, 1, 4, 0, 0, ";", "#X", 0, 64, 122, 249, 1, 4, 0, 0, ";", "#X", 0, 67, 120, 386, 1, 4, 0, 0, ";", "#X", 0, 72, 120, 257, 1, 4, 0, 0, ";", "#X", 0, 48, 118, 346, 3, 6, 0, 0, ";", "#X", 0, 55, 115, 185, 3, 6, 0, 0, ";", "#X", 0, 60, 117, 233, 3, 6, 0, 0, ";", "#X", 378, 29, 125, 257, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 201, 10, 13, 0, 0, ";", "#X", 0, 43, 123, 217, 10, 13, 0, 0, ";", "#X", 8, 41, 117, 217, 1, 4, 0, 0, ";", "#X", 0, 53, 123, 177, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 225, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 297, 1, 4, 0, 0, ";", "#X", 0, 74, 121, 305, 1, 4, 0, 0, ";", "#X", 0, 53, 119, 257, 3, 6, 0, 0, ";", "#X", 0, 65, 117, 249, 3, 6, 0, 0, ";", "#X", 0, 70, 118, 289, 3, 6, 0, 0, ";", "#X", 0, 74, 120, 265, 3, 6, 0, 0, ";", "#X", 0, 74, 113, 377, 4, 7, 0, 0, ";", "#X", 0, 86, 113, 361, 4, 7, 0, 0, ";", "#X", 0, 74, 123, 313, 13, 12, 0, 0, ";", "#X", 0, 36, 121, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 122, 56, 11, 14, 0, 0, ";", "#X", 40, 81, 114, 96, 10, 13, 0, 0, ";", "#X", 337, 29, 125, 89, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 81, 10, 13, 0, 0, ";", "#X", 0, 43, 122, 81, 10, 13, 0, 0, ";", "#X", 8, 41, 122, 89, 1, 4, 0, 0, ";", "#X", 0, 53, 114, 73, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 81, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 81, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 97, 1, 4, 0, 0, ";", "#X", 0, 53, 117, 73, 3, 6, 0, 0, ";", "#X", 0, 65, 117, 65, 3, 6, 0, 0, ";", "#X", 0, 69, 119, 57, 3, 6, 0, 0, ";", "#X", 0, 72, 119, 65, 3, 6, 0, 0, ";", "#X", 0, 72, 113, 89, 4, 7, 0, 0, ";", "#X", 0, 84, 113, 73, 4, 7, 0, 0, ";", "#X", 0, 72, 123, 73, 13, 12, 0, 0, ";", "#X", 0, 36, 122, 73, 11, 14, 0, 0, ";", "#X", 0, 48, 121, 65, 11, 14, 0, 0, ";", "#X", 25, 81, 108, 88, 10, 13, 0, 0, ";", "#X", 160, 29, 124, 80, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 72, 10, 13, 0, 0, ";", "#X", 0, 43, 121, 64, 10, 13, 0, 0, ";", "#X", 8, 41, 116, 72, 1, 4, 0, 0, ";", "#X", 0, 53, 118, 89, 1, 4, 0, 0, ";", "#X", 0, 65, 117, 48, 1, 4, 0, 0, ";", "#X", 0, 69, 121, 56, 1, 4, 0, 0, ";", "#X", 0, 72, 116, 105, 1, 4, 0, 0, ";", "#X", 0, 53, 116, 56, 3, 6, 0, 0, ";", "#X", 0, 65, 114, 48, 3, 6, 0, 0, ";", "#X", 0, 69, 118, 56, 3, 6, 0, 0, ";", "#X", 0, 72, 113, 89, 3, 6, 0, 0, ";", "#X", 0, 72, 113, 97, 4, 7, 0, 0, ";", "#X", 0, 84, 113, 81, 4, 7, 0, 0, ";", "#X", 0, 72, 122, 72, 13, 12, 0, 0, ";", "#X", 24, 81, 108, 81, 10, 13, 0, 0, ";", "#X", 161, 29, 125, 297, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 201, 10, 13, 0, 0, ";", "#X", 0, 43, 121, 225, 10, 13, 0, 0, ";", "#X", 8, 41, 118, 241, 1, 4, 0, 0, ";", "#X", 0, 53, 123, 249, 1, 4, 0, 0, ";", "#X", 0, 65, 120, 233, 1, 4, 0, 0, ";", "#X", 0, 68, 122, 249, 1, 4, 0, 0, ";", "#X", 0, 71, 117, 289, 1, 4, 0, 0, ";", "#X", 0, 53, 117, 249, 3, 6, 0, 0, ";", "#X", 0, 65, 119, 249, 3, 6, 0, 0, ";", "#X", 0, 68, 117, 257, 3, 6, 0, 0, ";", "#X", 0, 71, 119, 281, 3, 6, 0, 0, ";", "#X", 0, 71, 113, 289, 4, 7, 0, 0, ";", "#X", 0, 83, 113, 305, 4, 7, 0, 0, ";", "#X", 0, 71, 123, 128, 13, 12, 0, 0, ";", "#X", 0, 36, 121, 56, 11, 14, 0, 0, ";", "#X", 0, 48, 121, 56, 11, 14, 0, 0, ";", "#X", 32, 81, 111, 96, 10, 13, 0, 0, ";", "#X", 345, 29, 125, 282, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 249, 10, 13, 0, 0, ";", "#X", 0, 43, 123, 249, 10, 13, 0, 0, ";", "#X", 8, 72, 123, 201, 13, 12, 0, 0, ";", "#X", 1, 41, 117, 265, 1, 4, 0, 0, ";", "#X", 0, 53, 123, 273, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 257, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 281, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 305, 1, 4, 0, 0, ";", "#X", 0, 53, 117, 297, 3, 6, 0, 0, ";", "#X", 0, 65, 114, 265, 3, 6, 0, 0, ";", "#X", 0, 69, 118, 297, 3, 6, 0, 0, ";", "#X", 0, 72, 115, 305, 3, 6, 0, 0, ";", "#X", 0, 72, 113, 345, 4, 7, 0, 0, ";", "#X", 0, 84, 113, 329, 4, 7, 0, 0, ";", "#X", 0, 36, 120, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 121, 72, 11, 14, 0, 0, ";", "#X", 32, 81, 113, 88, 10, 13, 0, 0, ";", "#X", 345, 29, 125, 88, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 88, 10, 13, 0, 0, ";", "#X", 0, 45, 122, 88, 10, 13, 0, 0, ";", "#X", 8, 41, 105, 64, 1, 4, 0, 0, ";", "#X", 0, 53, 119, 72, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 64, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 56, 1, 4, 0, 0, ";", "#X", 0, 74, 118, 64, 1, 4, 0, 0, ";", "#X", 0, 53, 120, 64, 3, 6, 0, 0, ";", "#X", 0, 65, 115, 56, 3, 6, 0, 0, ";", "#X", 0, 70, 119, 56, 3, 6, 0, 0, ";", "#X", 0, 74, 112, 64, 3, 6, 0, 0, ";", "#X", 0, 74, 113, 88, 4, 7, 0, 0, ";", "#X", 0, 86, 113, 80, 4, 7, 0, 0, ";", "#X", 0, 74, 123, 88, 13, 12, 0, 0, ";", "#X", 0, 36, 120, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 121, 56, 11, 14, 0, 0, ";", "#X", 24, 81, 111, 64, 10, 13, 0, 0, ";", "#X", 161, 29, 123, 96, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 104, 10, 13, 0, 0, ";", "#X", 0, 45, 120, 88, 10, 13, 0, 0, ";", "#X", 8, 41, 117, 56, 1, 4, 0, 0, ";", "#X", 0, 53, 120, 72, 1, 4, 0, 0, ";", "#X", 0, 65, 120, 48, 1, 4, 0, 0, ";", "#X", 0, 70, 120, 88, 1, 4, 0, 0, ";", "#X", 0, 74, 120, 40, 1, 4, 0, 0, ";", "#X", 0, 53, 118, 64, 3, 6, 0, 0, ";", "#X", 0, 65, 113, 40, 3, 6, 0, 0, ";", "#X", 0, 70, 118, 72, 3, 6, 0, 0, ";", "#X", 0, 74, 117, 64, 3, 6, 0, 0, ";", "#X", 0, 74, 113, 96, 4, 7, 0, 0, ";", "#X", 0, 86, 113, 96, 4, 7, 0, 0, ";", "#X", 0, 74, 121, 88, 13, 12, 0, 0, ";", "#X", 16, 81, 109, 88, 10, 13, 0, 0, ";", "#X", 169, 29, 125, 297, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 281, 10, 13, 0, 0, ";", "#X", 0, 43, 123, 273, 10, 13, 0, 0, ";", "#X", 8, 41, 120, 241, 1, 4, 0, 0, ";", "#X", 0, 53, 120, 273, 1, 4, 0, 0, ";", "#X", 0, 65, 122, 265, 1, 4, 0, 0, ";", "#X", 0, 69, 122, 224, 1, 4, 0, 0, ";", "#X", 0, 72, 117, 273, 1, 4, 0, 0, ";", "#X", 0, 53, 121, 289, 3, 6, 0, 0, ";", "#X", 0, 65, 117, 273, 3, 6, 0, 0, ";", "#X", 0, 69, 121, 265, 3, 6, 0, 0, ";", "#X", 0, 72, 116, 313, 3, 6, 0, 0, ";", "#X", 0, 72, 113, 345, 4, 7, 0, 0, ";", "#X", 0, 84, 113, 361, 4, 7, 0, 0, ";", "#X", 0, 72, 124, 160, 13, 12, 0, 0, ";", "#X", 0, 36, 121, 56, 11, 14, 0, 0, ";", "#X", 0, 48, 119, 56, 11, 14, 0, 0, ";", "#X", 16, 81, 110, 96, 10, 13, 0, 0, ";", "#X", 361, 29, 125, 105, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 96, 10, 13, 0, 0, ";", "#X", 0, 41, 123, 96, 10, 13, 0, 0, ";", "#X", 0, 81, 113, 80, 10, 13, 0, 0, ";", "#X", 8, 41, 117, 72, 1, 4, 0, 0, ";", "#X", 0, 53, 120, 88, 1, 4, 0, 0, ";", "#X", 0, 65, 114, 72, 1, 4, 0, 0, ";", "#X", 0, 68, 122, 97, 1, 4, 0, 0, ";", "#X", 0, 71, 117, 48, 1, 4, 0, 0, ";", "#X", 0, 53, 119, 88, 3, 6, 0, 0, ";", "#X", 0, 65, 104, 72, 3, 6, 0, 0, ";", "#X", 0, 68, 117, 97, 3, 6, 0, 0, ";", "#X", 0, 71, 114, 64, 3, 6, 0, 0, ";", "#X", 0, 71, 113, 72, 4, 7, 0, 0, ";", "#X", 0, 83, 113, 72, 4, 7, 0, 0, ";", "#X", 0, 71, 124, 72, 13, 12, 0, 0, ";", "#X", 0, 36, 120, 56, 11, 14, 0, 0, ";", "#X", 0, 48, 121, 56, 11, 14, 0, 0, ";", "#X", 185, 29, 122, 128, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 112, 10, 13, 0, 0, ";", "#X", 0, 41, 121, 96, 10, 13, 0, 0, ";", "#X", 0, 81, 107, 80, 10, 13, 0, 0, ";", "#X", 8, 41, 114, 88, 1, 4, 0, 0, ";", "#X", 0, 53, 122, 104, 1, 4, 0, 0, ";", "#X", 0, 65, 93, 88, 1, 4, 0, 0, ";", "#X", 0, 68, 110, 112, 1, 4, 0, 0, ";", "#X", 0, 71, 115, 120, 1, 4, 0, 0, ";", "#X", 0, 53, 118, 96, 3, 6, 0, 0, ";", "#X", 0, 65, 113, 88, 3, 6, 0, 0, ";", "#X", 0, 68, 114, 120, 3, 6, 0, 0, ";", "#X", 0, 71, 116, 136, 3, 6, 0, 0, ";", "#X", 0, 71, 113, 88, 4, 7, 0, 0, ";", "#X", 0, 83, 113, 80, 4, 7, 0, 0, ";", "#X", 0, 71, 124, 88, 13, 12, 0, 0, ";", "#X", 185, 29, 125, 361, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 273, 10, 13, 0, 0, ";", "#X", 0, 43, 123, 241, 10, 13, 0, 0, ";", "#X", 8, 41, 119, 152, 1, 4, 0, 0, ";", "#X", 0, 53, 123, 192, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 209, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 144, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 152, 1, 4, 0, 0, ";", "#X", 0, 53, 119, 265, 3, 6, 0, 0, ";", "#X", 0, 65, 117, 281, 3, 6, 0, 0, ";", "#X", 0, 69, 121, 281, 3, 6, 0, 0, ";", "#X", 0, 72, 119, 297, 3, 6, 0, 0, ";", "#X", 0, 72, 113, 257, 4, 7, 0, 0, ";", "#X", 0, 84, 113, 241, 4, 7, 0, 0, ";", "#X", 0, 72, 123, 160, 13, 12, 0, 0, ";", "#X", 0, 81, 109, 96, 10, 13, 0, 0, ";", "#X", 0, 36, 121, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 122, 72, 11, 14, 0, 0, ";", "#X", 377, 34, 125, 289, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 386, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 1976, 10, 13, 0, 0, ";", "#X", 8, 46, 121, 667, 1, 4, 0, 0, ";", "#X", 0, 58, 122, 289, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 217, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 249, 1, 4, 0, 0, ";", "#X", 0, 74, 121, 233, 1, 4, 0, 0, ";", "#X", 0, 58, 118, 305, 3, 6, 0, 0, ";", "#X", 0, 65, 111, 265, 3, 6, 0, 0, ";", "#X", 0, 70, 118, 281, 3, 6, 0, 0, ";", "#X", 0, 74, 117, 289, 3, 6, 0, 0, ";", "#X", 0, 74, 113, 241, 4, 7, 0, 0, ";", "#X", 0, 86, 113, 257, 4, 7, 0, 0, ";", "#X", 0, 74, 122, 129, 13, 12, 0, 0, ";", "#X", 0, 81, 114, 97, 10, 13, 0, 0, ";", "#X", 0, 36, 122, 56, 11, 14, 0, 0, ";", "#X", 0, 48, 122, 73, 11, 14, 0, 0, ";", "#X", 378, 34, 125, 128, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 192, 10, 13, 0, 0, ";", "#X", 0, 43, 121, 192, 10, 13, 0, 0, ";", "#X", 8, 46, 119, 117205, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 273, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 265, 1, 4, 0, 0, ";", "#X", 0, 70, 122, 249, 1, 4, 0, 0, ";", "#X", 0, 74, 122, 241, 1, 4, 0, 0, ";", "#X", 0, 58, 119, 120, 3, 6, 0, 0, ";", "#X", 0, 65, 112, 96, 3, 6, 0, 0, ";", "#X", 0, 70, 117, 144, 3, 6, 0, 0, ";", "#X", 0, 74, 119, 136, 3, 6, 0, 0, ";", "#X", 0, 74, 113, 176, 4, 7, 0, 0, ";", "#X", 0, 86, 113, 120, 4, 7, 0, 0, ";", "#X", 0, 74, 123, 88, 13, 12, 0, 0, ";", "#X", 16, 81, 108, 56, 10, 13, 0, 0, ";", "#X", 168, 34, 119, 161, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 193, 10, 13, 0, 0, ";", "#X", 0, 43, 124, 193, 10, 13, 0, 0, ";", "#X", 0, 81, 106, 81, 10, 13, 0, 0, ";", "#X", 9, 76, 117, 120, 1, 4, 0, 0, ";", "#X", 0, 58, 117, 136, 3, 6, 0, 0, ";", "#X", 0, 65, 107, 72, 3, 6, 0, 0, ";", "#X", 0, 76, 104, 88, 3, 6, 0, 0, ";", "#X", 0, 76, 113, 136, 4, 7, 0, 0, ";", "#X", 0, 88, 113, 144, 4, 7, 0, 0, ";", "#X", 0, 76, 122, 96, 13, 12, 0, 0, ";", "#X", 184, 33, 125, 257, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 386, 10, 13, 0, 0, ";", "#X", 0, 57, 123, 498, 10, 13, 0, 0, ";", "#X", 8, 45, 123, 129, 1, 4, 0, 0, ";", "#X", 0, 57, 122, 129, 1, 4, 0, 0, ";", "#X", 0, 65, 122, 137, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 129, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 121, 1, 4, 0, 0, ";", "#X", 0, 57, 119, 129, 3, 6, 0, 0, ";", "#X", 0, 65, 121, 105, 3, 6, 0, 0, ";", "#X", 0, 69, 120, 113, 3, 6, 0, 0, ";", "#X", 0, 72, 117, 137, 3, 6, 0, 0, ";", "#X", 0, 72, 113, 217, 4, 7, 0, 0, ";", "#X", 0, 84, 113, 209, 4, 7, 0, 0, ";", "#X", 0, 72, 124, 129, 13, 12, 0, 0, ";", "#X", 0, 81, 113, 97, 10, 13, 0, 0, ";", "#X", 0, 36, 122, 73, 11, 14, 0, 0, ";", "#X", 0, 48, 122, 73, 11, 14, 0, 0, ";", "#X", 378, 33, 125, 112, 2, 5, 0, 0, ";", "#X", 0, 35, 120, 193, 10, 13, 0, 0, ";", "#X", 0, 43, 120, 193, 10, 13, 0, 0, ";", "#X", 8, 45, 123, 289, 1, 4, 0, 0, ";", "#X", 0, 57, 123, 241, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 88, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 185, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 169, 1, 4, 0, 0, ";", "#X", 0, 57, 119, 88, 3, 6, 0, 0, ";", "#X", 0, 69, 119, 152, 3, 6, 0, 0, ";", "#X", 0, 72, 119, 144, 3, 6, 0, 0, ";", "#X", 0, 72, 113, 88, 4, 7, 0, 0, ";", "#X", 0, 84, 113, 72, 4, 7, 0, 0, ";", "#X", 0, 72, 123, 72, 13, 12, 0, 0, ";", "#X", 24, 81, 114, 72, 10, 13, 0, 0, ";", "#X", 161, 33, 123, 152, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 192, 10, 13, 0, 0, ";", "#X", 0, 43, 123, 192, 10, 13, 0, 0, ";", "#X", 8, 65, 122, 345, 1, 4, 0, 0, ";", "#X", 0, 57, 119, 152, 3, 6, 0, 0, ";", "#X", 0, 65, 118, 120, 3, 6, 0, 0, ";", "#X", 0, 72, 113, 112, 4, 7, 0, 0, ";", "#X", 0, 84, 113, 96, 4, 7, 0, 0, ";", "#X", 0, 72, 121, 88, 13, 12, 0, 0, ";", "#X", 0, 81, 111, 96, 10, 13, 0, 0, ";", "#X", 184, 31, 125, 314, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 241, 10, 13, 0, 0, ";", "#X", 0, 49, 124, 5944, 10, 13, 0, 0, ";", "#X", 8, 43, 123, 153, 1, 4, 0, 0, ";", "#X", 0, 55, 120, 153, 1, 4, 0, 0, ";", "#X", 0, 67, 122, 161, 1, 4, 0, 0, ";", "#X", 0, 71, 123, 145, 1, 4, 0, 0, ";", "#X", 0, 55, 121, 153, 3, 6, 0, 0, ";", "#X", 0, 65, 116, 113, 3, 6, 0, 0, ";", "#X", 0, 67, 118, 121, 3, 6, 0, 0, ";", "#X", 0, 71, 119, 129, 3, 6, 0, 0, ";", "#X", 0, 71, 113, 201, 4, 7, 0, 0, ";", "#X", 0, 83, 113, 185, 4, 7, 0, 0, ";", "#X", 0, 71, 123, 113, 13, 12, 0, 0, ";", "#X", 0, 36, 122, 73, 11, 14, 0, 0, ";", "#X", 0, 48, 122, 73, 11, 14, 0, 0, ";", "#X", 8, 81, 116, 81, 10, 13, 0, 0, ";", "#X", 370, 31, 123, 88, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 72, 10, 13, 0, 0, ";", "#X", 0, 43, 123, 80, 10, 13, 0, 0, ";", "#X", 8, 43, 123, 88, 1, 4, 0, 0, ";", "#X", 0, 55, 123, 112, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 96, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 80, 1, 4, 0, 0, ";", "#X", 0, 71, 118, 104, 1, 4, 0, 0, ";", "#X", 0, 55, 117, 128, 3, 6, 0, 0, ";", "#X", 0, 65, 117, 96, 3, 6, 0, 0, ";", "#X", 0, 67, 119, 112, 3, 6, 0, 0, ";", "#X", 0, 71, 121, 120, 3, 6, 0, 0, ";", "#X", 0, 71, 113, 80, 4, 7, 0, 0, ";", "#X", 0, 83, 113, 80, 4, 7, 0, 0, ";", "#X", 0, 71, 123, 72, 13, 12, 0, 0, ";", "#X", 0, 36, 122, 80, 11, 14, 0, 0, ";", "#X", 0, 48, 121, 64, 11, 14, 0, 0, ";", "#X", 32, 81, 115, 88, 10, 13, 0, 0, ";", "#X", 153, 31, 123, 200, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 96, 10, 13, 0, 0, ";", "#X", 0, 43, 123, 72, 10, 13, 0, 0, ";", "#X", 8, 43, 113, 184, 1, 4, 0, 0, ";", "#X", 0, 55, 123, 192, 1, 4, 0, 0, ";", "#X", 0, 65, 121, 80, 1, 4, 0, 0, ";", "#X", 0, 67, 122, 96, 1, 4, 0, 0, ";", "#X", 0, 71, 115, 136, 1, 4, 0, 0, ";", "#X", 0, 55, 115, 225, 3, 6, 0, 0, ";", "#X", 0, 65, 115, 128, 3, 6, 0, 0, ";", "#X", 0, 67, 115, 128, 3, 6, 0, 0, ";", "#X", 0, 71, 116, 184, 3, 6, 0, 0, ";", "#X", 0, 71, 113, 128, 4, 7, 0, 0, ";", "#X", 0, 83, 113, 104, 4, 7, 0, 0, ";", "#X", 0, 71, 124, 88, 13, 12, 0, 0, ";", "#X", 24, 81, 112, 80, 10, 13, 0, 0, ";", "#X", 160, 36, 125, 290, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 619, 10, 13, 0, 0, ";", "#X", 0, 46, 123, 47077, 10, 13, 0, 0, ";", "#X", 8, 48, 122, 290, 1, 4, 0, 0, ";", "#X", 0, 60, 122, 105, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 161, 1, 4, 0, 0, ";", "#X", 0, 72, 122, 201, 1, 4, 0, 0, ";", "#X", 0, 48, 119, 185, 3, 6, 0, 0, ";", "#X", 0, 60, 121, 193, 3, 6, 0, 0, ";", "#X", 0, 64, 119, 201, 3, 6, 0, 0, ";", "#X", 0, 67, 121, 209, 3, 6, 0, 0, ";", "#X", 0, 72, 119, 233, 3, 6, 0, 0, ";", "#X", 0, 72, 113, 193, 4, 7, 0, 0, ";", "#X", 0, 84, 113, 145, 4, 7, 0, 0, ";", "#X", 0, 72, 123, 105, 13, 12, 0, 0, ";", "#X", 0, 36, 122, 97, 11, 14, 0, 0, ";", "#X", 0, 48, 122, 73, 11, 14, 0, 0, ";", "#X", 8, 81, 117, 97, 10, 13, 0, 0, ";", "#X", 378, 72, 123, 80, 1, 4, 0, 0, ";", "#X", 193, 72, 121, 160, 1, 4, 0, 0, ";", "#X", 193, 70, 122, 385, 1, 4, 0, 0, ";", "#X", 0, 74, 119, 144, 1, 4, 0, 0, ";", "#X", 192, 77, 117, 185, 1, 4, 0, 0, ";", "#X", 193, 69, 123, 321, 1, 4, 0, 0, ";", "#X", 0, 72, 121, 193, 1, 4, 0, 0, ";", "#X", 193, 77, 121, 201, 1, 4, 0, 0, ";", "#X", 193, 68, 118, 385, 1, 4, 0, 0, ";", "#X", 0, 71, 118, 176, 1, 4, 0, 0, ";", "#X", 192, 77, 118, 209, 1, 4, 0, 0, ";", "#X", 193, 67, 122, 177, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 217, 1, 4, 0, 0, ";", "#X", 193, 77, 120, 72, 1, 4, 0, 0, ";", "#X", 185, 37, 118, 120, 2, 5, 0, 0, ";", "#X", 8, 61, 123, 136, 1, 4, 0, 0, ";", "#X", 0, 65, 120, 56, 1, 4, 0, 0, ";", "#X", 0, 68, 122, 72, 1, 4, 0, 0, ";", "#X", 0, 73, 120, 88, 1, 4, 0, 0, ";", "#X", 0, 49, 113, 257, 3, 6, 0, 0, ";", "#X", 0, 56, 113, 48, 3, 6, 0, 0, ";", "#X", 0, 61, 113, 48, 3, 6, 0, 0, ";", "#X", 184, 37, 106, 169, 2, 5, 0, 0, ";", "#X", 8, 61, 123, 137, 1, 4, 0, 0, ";", "#X", 0, 65, 120, 57, 1, 4, 0, 0, ";", "#X", 0, 68, 122, 73, 1, 4, 0, 0, ";", "#X", 0, 73, 120, 89, 1, 4, 0, 0, ";", "#X", 0, 49, 113, 1414, 3, 6, 0, 0, ";", "#X", 0, 56, 115, 57, 3, 6, 0, 0, ";", "#X", 185, 36, 121, 145, 2, 5, 0, 0, ";", "#X", 8, 60, 123, 81, 1, 4, 0, 0, ";", "#X", 0, 64, 119, 65, 1, 4, 0, 0, ";", "#X", 0, 67, 119, 73, 1, 4, 0, 0, ";", "#X", 0, 72, 112, 73, 1, 4, 0, 0, ";", "#X", 0, 36, 114, 48, 3, 6, 0, 0, ";", "#X", 0, 43, 116, 56, 3, 6, 0, 0, ";", "#X", 0, 48, 118, 56, 3, 6, 0, 0, ";", "#X", 378, 35, 116, 96, 2, 5, 0, 0, ";", "#X", 8, 59, 117, 72, 1, 4, 0, 0, ";", "#X", 0, 63, 117, 56, 1, 4, 0, 0, ";", "#X", 0, 66, 117, 96, 1, 4, 0, 0, ";", "#X", 0, 71, 112, 80, 1, 4, 0, 0, ";", "#X", 0, 35, 103, 32, 3, 6, 0, 0, ";", "#X", 0, 42, 113, 48, 3, 6, 0, 0, ";", "#X", 0, 47, 112, 40, 3, 6, 0, 0, ";", "#X", 185, 35, 111, 168, 2, 5, 0, 0, ";", "#X", 8, 59, 117, 192, 1, 4, 0, 0, ";", "#X", 0, 63, 95, 96, 1, 4, 0, 0, ";", "#X", 0, 66, 109, 104, 1, 4, 0, 0, ";", "#X", 0, 71, 102, 104, 1, 4, 0, 0, ";", "#X", 0, 35, 108, 40, 3, 6, 0, 0, ";", "#X", 0, 42, 112, 48, 3, 6, 0, 0, ";", "#X", 0, 47, 100, 40, 3, 6, 0, 0, ";", "#X", 184, 36, 118, 193, 2, 5, 0, 0, ";", "#X", 8, 60, 122, 121, 1, 4, 0, 0, ";", "#X", 0, 64, 118, 81, 1, 4, 0, 0, ";", "#X", 0, 67, 113, 89, 1, 4, 0, 0, ";", "#X", 0, 72, 116, 97, 1, 4, 0, 0, ";", "#X", 0, 36, 118, 81, 3, 6, 0, 0, ";", "#X", 0, 43, 112, 73, 3, 6, 0, 0, ";", "#X", 0, 48, 113, 81, 3, 6, 0, 0, ";", "#X", 378, 37, 118, 72, 2, 5, 0, 0, ";", "#X", 8, 61, 119, 96, 1, 4, 0, 0, ";", "#X", 0, 65, 115, 72, 1, 4, 0, 0, ";", "#X", 0, 68, 120, 80, 1, 4, 0, 0, ";", "#X", 0, 73, 118, 104, 1, 4, 0, 0, ";", "#X", 0, 37, 115, 64, 3, 6, 0, 0, ";", "#X", 0, 44, 117, 48, 3, 6, 0, 0, ";", "#X", 0, 49, 112, 257, 3, 6, 0, 0, ";", "#X", 185, 37, 118, 120, 2, 5, 0, 0, ";", "#X", 8, 61, 117, 136, 1, 4, 0, 0, ";", "#X", 0, 65, 107, 40, 1, 4, 0, 0, ";", "#X", 0, 68, 120, 80, 1, 4, 0, 0, ";", "#X", 0, 73, 120, 72, 1, 4, 0, 0, ";", "#X", 0, 37, 115, 64, 3, 6, 0, 0, ";", "#X", 0, 44, 112, 64, 3, 6, 0, 0, ";", "#X", 0, 49, 104, 40594, 3, 6, 0, 0, ";", "#X", 184, 36, 117, 121, 2, 5, 0, 0, ";", "#X", 8, 60, 118, 73, 1, 4, 0, 0, ";", "#X", 0, 64, 121, 65, 1, 4, 0, 0, ";", "#X", 0, 67, 117, 57, 1, 4, 0, 0, ";", "#X", 0, 72, 117, 73, 1, 4, 0, 0, ";", "#X", 0, 36, 111, 73, 3, 6, 0, 0, ";", "#X", 0, 43, 112, 57, 3, 6, 0, 0, ";", "#X", 0, 48, 111, 65, 3, 6, 0, 0, ";", "#X", 185, 36, 114, 193, 2, 5, 0, 0, ";", "#X", 8, 60, 112, 161, 1, 4, 0, 0, ";", "#X", 0, 67, 108, 81, 1, 4, 0, 0, ";", "#X", 0, 72, 105, 72, 1, 4, 0, 0, ";", "#X", 0, 36, 104, 89, 3, 6, 0, 0, ";", "#X", 0, 48, 100, 72, 3, 6, 0, 0, ";", "#X", 185, 35, 120, 337, 2, 5, 0, 0, ";", "#X", 8, 59, 120, 337, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 177, 1, 4, 0, 0, ";", "#X", 0, 66, 113, 80, 1, 4, 0, 0, ";", "#X", 0, 71, 119, 201, 1, 4, 0, 0, ";", "#X", 0, 35, 115, 161, 3, 6, 0, 0, ";", "#X", 0, 42, 114, 64, 3, 6, 0, 0, ";", "#X", 0, 47, 115, 88, 3, 6, 0, 0, ";", "#X", 377, 36, 125, 161, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 113, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 956, 10, 13, 0, 0, ";", "#X", 9, 48, 123, 192, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 96, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 80, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 80, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 120, 1, 4, 0, 0, ";", "#X", 0, 48, 116, 112, 3, 6, 0, 0, ";", "#X", 0, 60, 116, 104, 3, 6, 0, 0, ";", "#X", 0, 64, 116, 128, 3, 6, 0, 0, ";", "#X", 0, 67, 116, 136, 3, 6, 0, 0, ";", "#X", 0, 72, 116, 192, 3, 6, 0, 0, ";", "#X", 0, 60, 122, 265, 13, 12, 0, 0, ";", "#X", 0, 72, 124, 265, 13, 12, 0, 0, ";", "#X", 0, 36, 122, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 121, 72, 11, 14, 0, 0, ";", "#X", 8, 81, 111, 80, 10, 13, 0, 0, ";", "#X", 369, 29, 125, 169, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 177, 10, 13, 0, 0, ";", "#X", 0, 52, 123, 185, 10, 13, 0, 0, ";", "#X", 8, 41, 123, 137, 1, 4, 0, 0, ";", "#X", 0, 53, 123, 96, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 121, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 88, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 113, 1, 4, 0, 0, ";", "#X", 0, 77, 123, 113, 1, 4, 0, 0, ";", "#X", 0, 41, 116, 121, 3, 6, 0, 0, ";", "#X", 0, 60, 116, 96, 3, 6, 0, 0, ";", "#X", 0, 65, 116, 121, 3, 6, 0, 0, ";", "#X", 0, 69, 116, 129, 3, 6, 0, 0, ";", "#X", 0, 72, 116, 129, 3, 6, 0, 0, ";", "#X", 0, 77, 116, 193, 3, 6, 0, 0, ";", "#X", 0, 36, 123, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 121, 72, 11, 14, 0, 0, ";", "#X", 8, 65, 124, 281, 13, 12, 0, 0, ";", "#X", 0, 77, 122, 249, 13, 12, 0, 0, ";", "#X", 8, 81, 117, 88, 10, 13, 0, 0, ";", "#X", 362, 36, 125, 200, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 112, 10, 13, 0, 0, ";", "#X", 0, 49, 122, 2192, 10, 13, 0, 0, ";", "#X", 8, 36, 123, 136, 1, 4, 0, 0, ";", "#X", 0, 48, 123, 88, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 56, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 72, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 112, 1, 4, 0, 0, ";", "#X", 0, 48, 117, 144, 3, 6, 0, 0, ";", "#X", 0, 60, 119, 80, 3, 6, 0, 0, ";", "#X", 0, 64, 118, 112, 3, 6, 0, 0, ";", "#X", 0, 67, 120, 128, 3, 6, 0, 0, ";", "#X", 0, 36, 122, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 121, 72, 11, 14, 0, 0, ";", "#X", 16, 60, 120, 241, 13, 12, 0, 0, ";", "#X", 16, 72, 121, 209, 13, 12, 0, 0, ";", "#X", 0, 81, 117, 80, 10, 13, 0, 0, ";", "#X", 345, 29, 125, 554, 2, 5, 0, 0, ";", "#X", 0, 41, 125, 514, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 386, 10, 13, 0, 0, ";", "#X", 0, 57, 123, 474, 10, 13, 0, 0, ";", "#X", 8, 29, 123, 546, 1, 4, 0, 0, ";", "#X", 0, 41, 123, 570, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 450, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 442, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 426, 1, 4, 0, 0, ";", "#X", 0, 77, 123, 418, 1, 4, 0, 0, ";", "#X", 0, 41, 114, 394, 3, 6, 0, 0, ";", "#X", 0, 65, 119, 362, 3, 6, 0, 0, ";", "#X", 0, 69, 121, 394, 3, 6, 0, 0, ";", "#X", 0, 72, 119, 394, 3, 6, 0, 0, ";", "#X", 0, 77, 122, 386, 3, 6, 0, 0, ";", "#X", 0, 36, 122, 80, 11, 14, 0, 0, ";", "#X", 0, 48, 122, 80, 11, 14, 0, 0, ";", "#X", 32, 65, 124, 522, 13, 12, 0, 0, ";", "#X", 0, 77, 123, 546, 13, 12, 0, 0, ";", "#X", 0, 81, 119, 97, 10, 13, 0, 0, ";", "#X", 546, 60, 117, 57, 1, 4, 0, 0, ";", "#X", 0, 64, 117, 57, 1, 4, 0, 0, ";", "#X", 0, 67, 117, 73, 1, 4, 0, 0, ";", "#X", 0, 60, 121, 81, 7, 8, 0, 0, ";", "#X", 0, 64, 119, 89, 7, 8, 0, 0, ";", "#X", 0, 67, 121, 81, 7, 8, 0, 0, ";", "#X", 0, 36, 114, 73, 11, 14, 0, 0, ";", "#X", 0, 48, 111, 57, 11, 14, 0, 0, ";", "#X", 8, 81, 104, 81, 10, 13, 0, 0, ";", "#X", 177, 81, 108, 81, 10, 13, 0, 0, ";", "#X", 8, 60, 118, 40, 1, 4, 0, 0, ";", "#X", 0, 64, 118, 193, 1, 4, 0, 0, ";", "#X", 0, 67, 118, 161, 1, 4, 0, 0, ";", "#X", 0, 60, 120, 73, 7, 8, 0, 0, ";", "#X", 0, 64, 119, 73, 7, 8, 0, 0, ";", "#X", 0, 67, 120, 89, 7, 8, 0, 0, ";", "#X", 0, 36, 116, 56, 11, 14, 0, 0, ";", "#X", 0, 48, 112, 56, 11, 14, 0, 0, ";", "#X", 193, 60, 116, 72, 1, 4, 0, 0, ";", "#X", 0, 65, 116, 193, 1, 4, 0, 0, ";", "#X", 0, 69, 116, 233, 1, 4, 0, 0, ";", "#X", 0, 60, 119, 64, 7, 8, 0, 0, ";", "#X", 0, 65, 118, 56, 7, 8, 0, 0, ";", "#X", 0, 69, 119, 64, 7, 8, 0, 0, ";", "#X", 0, 81, 113, 72, 10, 13, 0, 0, ";", "#X", 0, 36, 122, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 118, 56, 11, 14, 0, 0, ";", "#X", 185, 81, 116, 80, 10, 13, 0, 0, ";", "#X", 8, 60, 117, 168, 1, 4, 0, 0, ";", "#X", 0, 67, 117, 193, 1, 4, 0, 0, ";", "#X", 0, 70, 117, 56, 1, 4, 0, 0, ";", "#X", 0, 60, 117, 64, 7, 8, 0, 0, ";", "#X", 0, 67, 119, 56, 7, 8, 0, 0, ";", "#X", 0, 70, 120, 96, 7, 8, 0, 0, ";", "#X", 0, 36, 120, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 117, 72, 11, 14, 0, 0, ";", "#X", 176, 81, 118, 89, 10, 13, 0, 0, ";", "#X", 17, 65, 118, 192, 1, 4, 0, 0, ";", "#X", 0, 69, 118, 257, 1, 4, 0, 0, ";", "#X", 0, 60, 119, 80, 7, 8, 0, 0, ";", "#X", 0, 65, 120, 72, 7, 8, 0, 0, ";", "#X", 0, 69, 119, 72, 7, 8, 0, 0, ";", "#X", 0, 36, 122, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 119, 72, 11, 14, 0, 0, ";", "#X", 192, 64, 123, 193, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 32, 1, 4, 0, 0, ";", "#X", 0, 60, 121, 113, 7, 8, 0, 0, ";", "#X", 0, 64, 121, 105, 7, 8, 0, 0, ";", "#X", 0, 67, 122, 105, 7, 8, 0, 0, ";", "#X", 0, 81, 120, 97, 10, 13, 0, 0, ";", "#X", 0, 36, 120, 81, 11, 14, 0, 0, ";", "#X", 0, 48, 121, 73, 11, 14, 0, 0, ";", "#X", 185, 29, 125, 104, 2, 5, 0, 0, ";", "#X", 0, 41, 125, 104, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 80, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 779, 10, 13, 0, 0, ";", "#X", 8, 41, 123, 129, 1, 4, 0, 0, ";", "#X", 0, 53, 123, 121, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 64, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 80, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 96, 1, 4, 0, 0, ";", "#X", 0, 77, 123, 96, 1, 4, 0, 0, ";", "#X", 0, 29, 118, 113, 3, 6, 0, 0, ";", "#X", 0, 41, 123, 88, 3, 6, 0, 0, ";", "#X", 0, 65, 119, 104, 3, 6, 0, 0, ";", "#X", 0, 72, 119, 129, 3, 6, 0, 0, ";", "#X", 0, 77, 118, 129, 3, 6, 0, 0, ";", "#X", 24, 65, 123, 113, 13, 12, 0, 0, ";", "#X", 0, 77, 120, 105, 13, 12, 0, 0, ";", "#X", 161, 29, 124, 104, 2, 5, 0, 0, ";", "#X", 0, 41, 125, 96, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 88, 10, 13, 0, 0, ";", "#X", 0, 57, 122, 88, 10, 13, 0, 0, ";", "#X", 8, 41, 120, 112, 1, 4, 0, 0, ";", "#X", 0, 53, 123, 120, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 72, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 80, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 96, 1, 4, 0, 0, ";", "#X", 0, 77, 123, 88, 1, 4, 0, 0, ";", "#X", 0, 29, 116, 128, 3, 6, 0, 0, ";", "#X", 0, 41, 116, 128, 3, 6, 0, 0, ";", "#X", 0, 65, 119, 112, 3, 6, 0, 0, ";", "#X", 0, 72, 119, 136, 3, 6, 0, 0, ";", "#X", 0, 77, 117, 120, 3, 6, 0, 0, ";", "#X", 24, 77, 120, 112, 13, 12, 0, 0, ";", "#X", 8, 65, 121, 104, 13, 12, 0, 0, ";", "#X", 153, 29, 125, 594, 2, 5, 0, 0, ";", "#X", 0, 41, 125, 465, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 393, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 2546, 10, 13, 0, 0, ";", "#X", 8, 41, 123, 369, 1, 4, 0, 0, ";", "#X", 0, 53, 123, 313, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 313, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 313, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 289, 1, 4, 0, 0, ";", "#X", 0, 77, 123, 281, 1, 4, 0, 0, ";", "#X", 0, 29, 113, 546, 3, 6, 0, 0, ";", "#X", 0, 41, 122, 546, 3, 6, 0, 0, ";", "#X", 0, 65, 123, 433, 3, 6, 0, 0, ";", "#X", 0, 72, 116, 433, 3, 6, 0, 0, ";", "#X", 0, 77, 119, 417, 3, 6, 0, 0, ";", "#X", 32, 77, 123, 442, 13, 12, 0, 0, ";", "#X", 24, 65, 123, 418, 13, 12, 0, 0, ";", "#X", 514, 36, 125, 193, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 169, 10, 13, 0, 0, ";", "#X", 0, 43, 124, 185, 10, 13, 0, 0, ";", "#X", 8, 36, 123, 161, 1, 4, 0, 0, ";", "#X", 0, 48, 123, 128, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 80, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 96, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 112, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 145, 1, 4, 0, 0, ";", "#X", 0, 36, 120, 201, 3, 6, 0, 0, ";", "#X", 0, 60, 119, 72, 3, 6, 0, 0, ";", "#X", 0, 72, 120, 153, 3, 6, 0, 0, ";", "#X", 0, 60, 121, 273, 13, 12, 0, 0, ";", "#X", 0, 36, 123, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 121, 72, 11, 14, 0, 0, ";", "#X", 16, 81, 122, 104, 10, 13, 0, 0, ";", "#X", 8, 72, 123, 217, 13, 12, 0, 0, ";", "#X", 353, 29, 125, 193, 2, 5, 0, 0, ";", "#X", 0, 41, 125, 241, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 145, 10, 13, 0, 0, ";", "#X", 0, 43, 124, 169, 10, 13, 0, 0, ";", "#X", 8, 29, 123, 97, 1, 4, 0, 0, ";", "#X", 0, 41, 123, 65, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 105, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 129, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 113, 1, 4, 0, 0, ";", "#X", 0, 77, 123, 113, 1, 4, 0, 0, ";", "#X", 0, 29, 119, 169, 3, 6, 0, 0, ";", "#X", 0, 41, 120, 169, 3, 6, 0, 0, ";", "#X", 0, 65, 120, 121, 3, 6, 0, 0, ";", "#X", 0, 69, 120, 145, 3, 6, 0, 0, ";", "#X", 0, 72, 118, 145, 3, 6, 0, 0, ";", "#X", 0, 77, 122, 137, 3, 6, 0, 0, ";", "#X", 0, 36, 122, 73, 11, 14, 0, 0, ";", "#X", 0, 48, 122, 73, 11, 14, 0, 0, ";", "#X", 25, 81, 118, 96, 10, 13, 0, 0, ";", "#X", 16, 65, 124, 233, 13, 12, 0, 0, ";", "#X", 0, 77, 123, 200, 13, 12, 0, 0, ";", "#X", 337, 36, 125, 177, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 161, 10, 13, 0, 0, ";", "#X", 0, 43, 124, 153, 10, 13, 0, 0, ";", "#X", 8, 36, 123, 104, 1, 4, 0, 0, ";", "#X", 0, 48, 123, 88, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 56, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 56, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 72, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 121, 1, 4, 0, 0, ";", "#X", 0, 36, 118, 209, 3, 6, 0, 0, ";", "#X", 0, 60, 121, 88, 3, 6, 0, 0, ";", "#X", 0, 64, 119, 104, 3, 6, 0, 0, ";", "#X", 0, 67, 122, 112, 3, 6, 0, 0, ";", "#X", 0, 72, 121, 137, 3, 6, 0, 0, ";", "#X", 0, 36, 122, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 121, 80, 11, 14, 0, 0, ";", "#X", 16, 60, 122, 249, 13, 12, 0, 0, ";", "#X", 0, 72, 124, 217, 13, 12, 0, 0, ";", "#X", 0, 81, 116, 104, 10, 13, 0, 0, ";", "#X", 362, 29, 125, 538, 2, 5, 0, 0, ";", "#X", 0, 41, 125, 530, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 843, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 10080, 10, 13, 0, 0, ";", "#X", 8, 29, 123, 490, 1, 4, 0, 0, ";", "#X", 0, 41, 123, 481, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 409, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 401, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 377, 1, 4, 0, 0, ";", "#X", 0, 77, 123, 353, 1, 4, 0, 0, ";", "#X", 0, 29, 117, 530, 3, 6, 0, 0, ";", "#X", 0, 41, 123, 530, 3, 6, 0, 0, ";", "#X", 0, 65, 119, 506, 3, 6, 0, 0, ";", "#X", 0, 69, 121, 514, 3, 6, 0, 0, ";", "#X", 0, 72, 122, 506, 3, 6, 0, 0, ";", "#X", 0, 77, 123, 514, 3, 6, 0, 0, ";", "#X", 0, 36, 121, 88, 11, 14, 0, 0, ";", "#X", 0, 48, 120, 72, 11, 14, 0, 0, ";", "#X", 24, 65, 123, 466, 13, 12, 0, 0, ";", "#X", 0, 77, 123, 449, 13, 12, 0, 0, ";", "#X", 0, 81, 118, 96, 10, 13, 0, 0, ";", "#X", 522, 81, 100, 88, 10, 13, 0, 0, ";", "#X", 32, 60, 113, 80, 1, 4, 0, 0, ";", "#X", 0, 64, 113, 88, 1, 4, 0, 0, ";", "#X", 0, 67, 113, 120, 1, 4, 0, 0, ";", "#X", 0, 60, 116, 88, 7, 8, 0, 0, ";", "#X", 0, 64, 115, 96, 7, 8, 0, 0, ";", "#X", 0, 67, 117, 96, 7, 8, 0, 0, ";", "#X", 0, 36, 111, 56, 11, 14, 0, 0, ";", "#X", 0, 48, 105, 72, 11, 14, 0, 0, ";", "#X", 177, 81, 107, 80, 10, 13, 0, 0, ";", "#X", 16, 64, 113, 120, 1, 4, 0, 0, ";", "#X", 0, 67, 113, 168, 1, 4, 0, 0, ";", "#X", 0, 60, 115, 104, 7, 8, 0, 0, ";", "#X", 0, 64, 113, 88, 7, 8, 0, 0, ";", "#X", 0, 67, 116, 144, 7, 8, 0, 0, ";", "#X", 0, 36, 113, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 110, 64, 11, 14, 0, 0, ";", "#X", 168, 81, 114, 73, 10, 13, 0, 0, ";", "#X", 24, 65, 113, 137, 1, 4, 0, 0, ";", "#X", 0, 69, 113, 153, 1, 4, 0, 0, ";", "#X", 0, 60, 119, 89, 7, 8, 0, 0, ";", "#X", 0, 65, 117, 81, 7, 8, 0, 0, ";", "#X", 0, 69, 117, 121, 7, 8, 0, 0, ";", "#X", 0, 36, 122, 81, 11, 14, 0, 0, ";", "#X", 0, 48, 120, 73, 11, 14, 0, 0, ";", "#X", 169, 81, 118, 72, 10, 13, 0, 0, ";", "#X", 24, 60, 113, 48, 1, 4, 0, 0, ";", "#X", 0, 67, 113, 113, 1, 4, 0, 0, ";", "#X", 0, 70, 113, 89, 1, 4, 0, 0, ";", "#X", 0, 60, 114, 105, 7, 8, 0, 0, ";", "#X", 0, 67, 119, 129, 7, 8, 0, 0, ";", "#X", 0, 70, 119, 145, 7, 8, 0, 0, ";", "#X", 0, 36, 122, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 120, 56, 11, 14, 0, 0, ";", "#X", 169, 81, 118, 80, 10, 13, 0, 0, ";", "#X", 24, 65, 113, 177, 1, 4, 0, 0, ";", "#X", 0, 69, 113, 249, 1, 4, 0, 0, ";", "#X", 0, 60, 119, 96, 7, 8, 0, 0, ";", "#X", 0, 65, 117, 88, 7, 8, 0, 0, ";", "#X", 0, 69, 119, 112, 7, 8, 0, 0, ";", "#X", 0, 36, 120, 88, 11, 14, 0, 0, ";", "#X", 0, 48, 118, 72, 11, 14, 0, 0, ";", "#X", 177, 81, 119, 96, 10, 13, 0, 0, ";", "#X", 16, 64, 113, 193, 1, 4, 0, 0, ";", "#X", 0, 67, 113, 56, 1, 4, 0, 0, ";", "#X", 0, 60, 119, 112, 7, 8, 0, 0, ";", "#X", 0, 64, 119, 120, 7, 8, 0, 0, ";", "#X", 0, 67, 119, 144, 7, 8, 0, 0, ";", "#X", 0, 36, 120, 88, 11, 14, 0, 0, ";", "#X", 0, 48, 122, 88, 11, 14, 0, 0, ";", "#X", 184, 29, 123, 97, 2, 5, 0, 0, ";", "#X", 0, 41, 125, 97, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 89, 10, 13, 0, 0, ";", "#X", 0, 43, 123, 89, 10, 13, 0, 0, ";", "#X", 9, 29, 123, 136, 1, 4, 0, 0, ";", "#X", 0, 41, 123, 104, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 56, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 64, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 80, 1, 4, 0, 0, ";", "#X", 0, 77, 123, 112, 1, 4, 0, 0, ";", "#X", 0, 65, 119, 128, 3, 6, 0, 0, ";", "#X", 0, 72, 118, 128, 3, 6, 0, 0, ";", "#X", 0, 77, 111, 128, 3, 6, 0, 0, ";", "#X", 8, 65, 124, 112, 13, 12, 0, 0, ";", "#X", 24, 77, 123, 72, 13, 12, 0, 0, ";", "#X", 152, 29, 124, 97, 2, 5, 0, 0, ";", "#X", 0, 41, 125, 97, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 97, 10, 13, 0, 0, ";", "#X", 0, 43, 124, 97, 10, 13, 0, 0, ";", "#X", 8, 29, 123, 161, 1, 4, 0, 0, ";", "#X", 0, 41, 123, 177, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 81, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 73, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 73, 1, 4, 0, 0, ";", "#X", 0, 77, 123, 73, 1, 4, 0, 0, ";", "#X", 0, 65, 117, 137, 3, 6, 0, 0, ";", "#X", 0, 72, 117, 161, 3, 6, 0, 0, ";", "#X", 0, 77, 117, 153, 3, 6, 0, 0, ";", "#X", 32, 65, 123, 97, 13, 12, 0, 0, ";", "#X", 0, 77, 123, 81, 13, 12, 0, 0, ";", "#X", 153, 29, 125, 265, 2, 5, 0, 0, ";", "#X", 0, 41, 125, 289, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 241, 10, 13, 0, 0, ";", "#X", 0, 43, 124, 241, 10, 13, 0, 0, ";", "#X", 8, 60, 112, 80, 1, 4, 0, 0, ";", "#X", 0, 64, 112, 88, 1, 4, 0, 0, ";", "#X", 0, 67, 112, 121, 1, 4, 0, 0, ";", "#X", 0, 65, 117, 193, 3, 6, 0, 0, ";", "#X", 0, 72, 117, 193, 3, 6, 0, 0, ";", "#X", 0, 77, 117, 96, 3, 6, 0, 0, ";", "#X", 0, 60, 119, 96, 7, 8, 0, 0, ";", "#X", 0, 64, 117, 104, 7, 8, 0, 0, ";", "#X", 0, 67, 118, 80, 7, 8, 0, 0, ";", "#X", 24, 65, 122, 354, 13, 12, 0, 0, ";", "#X", 0, 77, 124, 354, 13, 12, 0, 0, ";", "#X", 169, 64, 112, 120, 1, 4, 0, 0, ";", "#X", 0, 67, 112, 168, 1, 4, 0, 0, ";", "#X", 0, 77, 98, 924, 3, 6, 0, 0, ";", "#X", 0, 60, 116, 88, 7, 8, 0, 0, ";", "#X", 0, 64, 115, 80, 7, 8, 0, 0, ";", "#X", 0, 67, 119, 120, 7, 8, 0, 0, ";", "#X", 0, 36, 119, 64, 11, 14, 0, 0, ";", "#X", 0, 48, 114, 80, 11, 14, 0, 0, ";", "#X", 56, 81, 102, 96, 10, 13, 0, 0, ";", "#X", 137, 65, 112, 136, 1, 4, 0, 0, ";", "#X", 0, 69, 112, 152, 1, 4, 0, 0, ";", "#X", 0, 60, 121, 88, 7, 8, 0, 0, ";", "#X", 0, 65, 118, 72, 7, 8, 0, 0, ";", "#X", 0, 69, 120, 104, 7, 8, 0, 0, ";", "#X", 0, 36, 121, 56, 11, 14, 0, 0, ";", "#X", 0, 48, 116, 56, 11, 14, 0, 0, ";", "#X", 32, 81, 106, 80, 10, 13, 0, 0, ";", "#X", 160, 60, 112, 49, 1, 4, 0, 0, ";", "#X", 0, 67, 112, 113, 1, 4, 0, 0, ";", "#X", 0, 70, 112, 89, 1, 4, 0, 0, ";", "#X", 0, 60, 121, 81, 7, 8, 0, 0, ";", "#X", 0, 67, 120, 121, 7, 8, 0, 0, ";", "#X", 0, 70, 119, 145, 7, 8, 0, 0, ";", "#X", 0, 36, 122, 65, 11, 14, 0, 0, ";", "#X", 0, 48, 118, 73, 11, 14, 0, 0, ";", "#X", 24, 81, 117, 89, 10, 13, 0, 0, ";", "#X", 169, 65, 112, 177, 1, 4, 0, 0, ";", "#X", 0, 69, 112, 249, 1, 4, 0, 0, ";", "#X", 0, 60, 117, 105, 7, 8, 0, 0, ";", "#X", 0, 65, 120, 88, 7, 8, 0, 0, ";", "#X", 0, 69, 119, 121, 7, 8, 0, 0, ";", "#X", 0, 36, 119, 88, 11, 14, 0, 0, ";", "#X", 0, 48, 120, 72, 11, 14, 0, 0, ";", "#X", 24, 81, 118, 81, 10, 13, 0, 0, ";", "#X", 169, 64, 112, 193, 1, 4, 0, 0, ";", "#X", 0, 67, 112, 56, 1, 4, 0, 0, ";", "#X", 0, 60, 121, 128, 7, 8, 0, 0, ";", "#X", 0, 64, 120, 128, 7, 8, 0, 0, ";", "#X", 0, 67, 121, 128, 7, 8, 0, 0, ";", "#X", 0, 36, 121, 88, 11, 14, 0, 0, ";", "#X", 0, 48, 122, 72, 11, 14, 0, 0, ";", "#X", 24, 81, 121, 80, 10, 13, 0, 0, ";", "#X", 161, 29, 125, 104, 2, 5, 0, 0, ";", "#X", 0, 41, 125, 112, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 80, 10, 13, 0, 0, ";", "#X", 0, 43, 124, 88, 10, 13, 0, 0, ";", "#X", 8, 29, 123, 120, 1, 4, 0, 0, ";", "#X", 0, 41, 123, 112, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 64, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 88, 1, 4, 0, 0, ";", "#X", 0, 77, 123, 96, 1, 4, 0, 0, ";", "#X", 0, 65, 119, 112, 3, 6, 0, 0, ";", "#X", 0, 72, 119, 128, 3, 6, 0, 0, ";", "#X", 0, 77, 114, 128, 3, 6, 0, 0, ";", "#X", 24, 65, 124, 96, 13, 12, 0, 0, ";", "#X", 16, 77, 123, 80, 13, 12, 0, 0, ";", "#X", 144, 29, 125, 105, 2, 5, 0, 0, ";", "#X", 0, 41, 125, 97, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 97, 10, 13, 0, 0, ";", "#X", 0, 43, 124, 97, 10, 13, 0, 0, ";", "#X", 8, 29, 123, 137, 1, 4, 0, 0, ";", "#X", 0, 41, 123, 137, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 81, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 105, 1, 4, 0, 0, ";", "#X", 0, 77, 123, 113, 1, 4, 0, 0, ";", "#X", 0, 65, 118, 193, 3, 6, 0, 0, ";", "#X", 0, 72, 118, 193, 3, 6, 0, 0, ";", "#X", 0, 77, 117, 185, 3, 6, 0, 0, ";", "#X", 41, 65, 124, 88, 13, 12, 0, 0, ";", "#X", 8, 77, 124, 80, 13, 12, 0, 0, ";", "#X", 136, 29, 125, 329, 2, 5, 0, 0, ";", "#X", 0, 41, 125, 313, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 161, 10, 13, 0, 0, ";", "#X", 0, 43, 124, 169, 10, 13, 0, 0, ";", "#X", 8, 60, 112, 81, 1, 4, 0, 0, ";", "#X", 0, 64, 112, 89, 1, 4, 0, 0, ";", "#X", 0, 67, 112, 121, 1, 4, 0, 0, ";", "#X", 0, 65, 117, 193, 3, 6, 0, 0, ";", "#X", 0, 72, 117, 193, 3, 6, 0, 0, ";", "#X", 0, 77, 117, 97, 3, 6, 0, 0, ";", "#X", 0, 60, 120, 97, 7, 8, 0, 0, ";", "#X", 0, 64, 121, 89, 7, 8, 0, 0, ";", "#X", 0, 67, 121, 89, 7, 8, 0, 0, ";", "#X", 40, 65, 123, 145, 13, 12, 0, 0, ";", "#X", 0, 77, 124, 145, 13, 12, 0, 0, ";", "#X", 153, 64, 112, 120, 1, 4, 0, 0, ";", "#X", 0, 67, 112, 169, 1, 4, 0, 0, ";", "#X", 0, 77, 94, 964, 3, 6, 0, 0, ";", "#X", 0, 60, 117, 104, 7, 8, 0, 0, ";", "#X", 0, 64, 119, 80, 7, 8, 0, 0, ";", "#X", 0, 67, 120, 128, 7, 8, 0, 0, ";", "#X", 0, 36, 116, 56, 11, 14, 0, 0, ";", "#X", 0, 48, 118, 72, 11, 14, 0, 0, ";", "#X", 40, 81, 104, 88, 10, 13, 0, 0, ";", "#X", 153, 65, 112, 136, 1, 4, 0, 0, ";", "#X", 0, 69, 112, 152, 1, 4, 0, 0, ";", "#X", 0, 60, 119, 88, 7, 8, 0, 0, ";", "#X", 0, 65, 120, 80, 7, 8, 0, 0, ";", "#X", 0, 69, 120, 112, 7, 8, 0, 0, ";", "#X", 0, 36, 121, 56, 11, 14, 0, 0, ";", "#X", 0, 48, 119, 56, 11, 14, 0, 0, ";", "#X", 24, 81, 110, 88, 10, 13, 0, 0, ";", "#X", 169, 60, 112, 48, 1, 4, 0, 0, ";", "#X", 0, 67, 112, 112, 1, 4, 0, 0, ";", "#X", 0, 70, 112, 88, 1, 4, 0, 0, ";", "#X", 0, 60, 120, 96, 7, 8, 0, 0, ";", "#X", 0, 67, 120, 120, 7, 8, 0, 0, ";", "#X", 0, 70, 119, 144, 7, 8, 0, 0, ";", "#X", 0, 36, 122, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 118, 56, 11, 14, 0, 0, ";", "#X", 24, 81, 118, 72, 10, 13, 0, 0, ";", "#X", 168, 65, 112, 177, 1, 4, 0, 0, ";", "#X", 0, 69, 112, 249, 1, 4, 0, 0, ";", "#X", 0, 60, 121, 97, 7, 8, 0, 0, ";", "#X", 0, 65, 120, 73, 7, 8, 0, 0, ";", "#X", 0, 69, 120, 113, 7, 8, 0, 0, ";", "#X", 0, 36, 119, 89, 11, 14, 0, 0, ";", "#X", 0, 48, 120, 65, 11, 14, 0, 0, ";", "#X", 8, 81, 118, 73, 10, 13, 0, 0, ";", "#X", 185, 64, 112, 193, 1, 4, 0, 0, ";", "#X", 0, 67, 112, 56, 1, 4, 0, 0, ";", "#X", 0, 60, 122, 137, 7, 8, 0, 0, ";", "#X", 0, 64, 119, 129, 7, 8, 0, 0, ";", "#X", 0, 67, 121, 137, 7, 8, 0, 0, ";", "#X", 0, 36, 120, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 122, 88, 11, 14, 0, 0, ";", "#X", 8, 81, 121, 96, 10, 13, 0, 0, ";", "#X", 185, 65, 123, 193, 1, 4, 0, 0, ";", "#X", 24, 65, 124, 88, 13, 12, 0, 0, ";", "#X", 0, 77, 123, 96, 13, 12, 0, 0, ";", "#X", 169, 77, 123, 128, 1, 4, 0, 0, ";", "#X", 0, 77, 116, 120, 3, 6, 0, 0, ";", "#X", 24, 77, 122, 88, 13, 12, 0, 0, ";", "#X", 8, 65, 124, 80, 13, 12, 0, 0, ";", "#X", 160, 77, 121, 514, 1, 4, 0, 0, ";", "#X", 0, 77, 116, 779, 3, 6, 0, 0, ";", "#X", 24, 65, 124, 145, 13, 12, 0, 0, ";", "#X", 0, 77, 124, 161, 13, 12, 0, 0, ";", "#X", 169, 75, 122, 2105, 1, 4, 0, 0, ";", "#X", 0, 75, 116, 1840, 3, 6, 0, 0, ";", "#X", 193, 84, 121, 1574, 6, 2, 0, 0, ";", "#X", 0, 72, 123, 1879, 1, 4, 0, 0, ";", "#X", 0, 72, 107, 1189, 3, 6, 0, 0, ";", "#X", 0, 72, 119, 1574, 7, 8, 0, 0, ";", "#X", 0, 72, 119, 1574, 8, 9, 0, 0, ";", "#X", 385, 80, 120, 1213, 6, 2, 0, 0, ";", "#X", 0, 68, 123, 1470, 1, 4, 0, 0, ";", "#X", 0, 68, 118, 1253, 3, 6, 0, 0, ";", "#X", 0, 68, 119, 1213, 7, 8, 0, 0, ";", "#X", 0, 68, 119, 1213, 8, 9, 0, 0, ";", "#X", 386, 77, 120, 867, 6, 2, 0, 0, ";", "#X", 0, 65, 123, 1068, 1, 4, 0, 0, ";", "#X", 0, 65, 118, 892, 3, 6, 0, 0, ";", "#X", 0, 65, 119, 867, 7, 8, 0, 0, ";", "#X", 0, 65, 119, 867, 8, 9, 0, 0, ";", "#X", 386, 75, 121, 522, 6, 2, 0, 0, ";", "#X", 0, 63, 123, 747, 1, 4, 0, 0, ";", "#X", 0, 63, 117, 24, 3, 6, 0, 0, ";", "#X", 0, 63, 119, 522, 7, 8, 0, 0, ";", "#X", 0, 63, 119, 522, 8, 9, 0, 0, ";", "#X", 763, 43, 125, 305, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 224, 10, 13, 0, 0, ";", "#X", 0, 43, 124, 224, 10, 13, 0, 0, ";", "#X", 0, 81, 118, 96, 10, 13, 0, 0, ";", "#X", 8, 60, 122, 265, 6, 2, 0, 0, ";", "#X", 0, 48, 123, 192, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 176, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 192, 1, 4, 0, 0, ";", "#X", 0, 84, 123, 200, 1, 4, 0, 0, ";", "#X", 0, 60, 116, 160, 3, 6, 0, 0, ";", "#X", 0, 67, 116, 192, 3, 6, 0, 0, ";", "#X", 0, 72, 116, 184, 3, 6, 0, 0, ";", "#X", 0, 48, 120, 265, 7, 8, 0, 0, ";", "#X", 0, 48, 120, 265, 8, 9, 0, 0, ";", "#X", 0, 60, 123, 241, 13, 12, 0, 0, ";", "#X", 0, 36, 108, 80, 11, 14, 0, 0, ";", "#X", 377, 35, 124, 241, 10, 13, 0, 0, ";", "#X", 0, 43, 124, 201, 10, 13, 0, 0, ";", "#X", 0, 45, 124, 233, 10, 13, 0, 0, ";", "#X", 8, 59, 122, 241, 6, 2, 0, 0, ";", "#X", 0, 47, 123, 193, 1, 4, 0, 0, ";", "#X", 0, 59, 123, 169, 1, 4, 0, 0, ";", "#X", 0, 71, 123, 113, 1, 4, 0, 0, ";", "#X", 0, 83, 123, 193, 1, 4, 0, 0, ";", "#X", 0, 59, 114, 145, 3, 6, 0, 0, ";", "#X", 0, 65, 114, 193, 3, 6, 0, 0, ";", "#X", 0, 71, 114, 193, 3, 6, 0, 0, ";", "#X", 0, 74, 114, 193, 3, 6, 0, 0, ";", "#X", 0, 47, 121, 241, 7, 8, 0, 0, ";", "#X", 0, 47, 120, 241, 8, 9, 0, 0, ";", "#X", 0, 59, 121, 241, 13, 12, 0, 0, ";", "#X", 0, 81, 121, 105, 10, 13, 0, 0, ";", "#X", 0, 36, 105, 105, 11, 14, 0, 0, ";", "#X", 8, 41, 125, 313, 2, 5, 0, 0, ";", "#X", 370, 38, 125, 241, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 217, 10, 13, 0, 0, ";", "#X", 0, 45, 124, 225, 10, 13, 0, 0, ";", "#X", 8, 56, 123, 289, 6, 2, 0, 0, ";", "#X", 0, 65, 123, 192, 6, 2, 0, 0, ";", "#X", 0, 51, 123, 192, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 257, 1, 4, 0, 0, ";", "#X", 0, 75, 123, 184, 1, 4, 0, 0, ";", "#X", 0, 87, 123, 201, 1, 4, 0, 0, ";", "#X", 0, 63, 115, 184, 3, 6, 0, 0, ";", "#X", 0, 71, 115, 192, 3, 6, 0, 0, ";", "#X", 0, 75, 115, 184, 3, 6, 0, 0, ";", "#X", 0, 44, 122, 289, 7, 8, 0, 0, ";", "#X", 0, 53, 122, 192, 7, 8, 0, 0, ";", "#X", 0, 44, 120, 289, 8, 9, 0, 0, ";", "#X", 0, 53, 120, 192, 8, 9, 0, 0, ";", "#X", 0, 63, 122, 217, 13, 12, 0, 0, ";", "#X", 0, 36, 117, 128, 11, 14, 0, 0, ";", "#X", 8, 81, 121, 104, 10, 13, 0, 0, ";", "#X", 369, 35, 125, 289, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 193, 10, 13, 0, 0, ";", "#X", 0, 43, 124, 201, 10, 13, 0, 0, ";", "#X", 0, 81, 119, 113, 10, 13, 0, 0, ";", "#X", 8, 55, 123, 249, 6, 2, 0, 0, ";", "#X", 0, 62, 123, 386, 6, 2, 0, 0, ";", "#X", 0, 50, 123, 193, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 169, 1, 4, 0, 0, ";", "#X", 0, 74, 123, 97, 1, 4, 0, 0, ";", "#X", 0, 86, 123, 169, 1, 4, 0, 0, ";", "#X", 0, 62, 116, 153, 3, 6, 0, 0, ";", "#X", 0, 67, 116, 193, 3, 6, 0, 0, ";", "#X", 0, 74, 116, 193, 3, 6, 0, 0, ";", "#X", 0, 77, 116, 193, 3, 6, 0, 0, ";", "#X", 0, 43, 122, 249, 7, 8, 0, 0, ";", "#X", 0, 50, 122, 386, 7, 8, 0, 0, ";", "#X", 0, 43, 121, 249, 8, 9, 0, 0, ";", "#X", 0, 50, 121, 386, 8, 9, 0, 0, ";", "#X", 0, 62, 123, 201, 13, 12, 0, 0, ";", "#X", 0, 36, 122, 121, 11, 14, 0, 0, ";", "#X", 378, 32, 125, 265, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 193, 10, 13, 0, 0, ";", "#X", 0, 45, 124, 201, 10, 13, 0, 0, ";", "#X", 0, 81, 120, 120, 10, 13, 0, 0, ";", "#X", 8, 53, 123, 241, 6, 2, 0, 0, ";", "#X", 0, 68, 123, 193, 6, 2, 0, 0, ";", "#X", 0, 56, 123, 193, 1, 4, 0, 0, ";", "#X", 0, 68, 123, 128, 1, 4, 0, 0, ";", "#X", 0, 80, 123, 112, 1, 4, 0, 0, ";", "#X", 0, 92, 123, 185, 1, 4, 0, 0, ";", "#X", 0, 59, 120, 193, 3, 6, 0, 0, ";", "#X", 0, 68, 120, 168, 3, 6, 0, 0, ";", "#X", 0, 74, 120, 193, 3, 6, 0, 0, ";", "#X", 0, 80, 120, 168, 3, 6, 0, 0, ";", "#X", 0, 41, 122, 241, 7, 8, 0, 0, ";", "#X", 0, 56, 122, 193, 7, 8, 0, 0, ";", "#X", 0, 41, 121, 241, 8, 9, 0, 0, ";", "#X", 0, 56, 121, 193, 8, 9, 0, 0, ";", "#X", 0, 68, 121, 201, 13, 12, 0, 0, ";", "#X", 0, 36, 121, 120, 11, 14, 0, 0, ";", "#X", 369, 31, 125, 249, 2, 5, 0, 0, ";", "#X", 8, 35, 124, 225, 10, 13, 0, 0, ";", "#X", 0, 43, 124, 161, 10, 13, 0, 0, ";", "#X", 8, 50, 123, 249, 6, 2, 0, 0, ";", "#X", 0, 67, 123, 193, 6, 2, 0, 0, ";", "#X", 0, 55, 123, 193, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 177, 1, 4, 0, 0, ";", "#X", 0, 79, 123, 105, 1, 4, 0, 0, ";", "#X", 0, 91, 123, 161, 1, 4, 0, 0, ";", "#X", 0, 55, 120, 193, 3, 6, 0, 0, ";", "#X", 0, 67, 120, 169, 3, 6, 0, 0, ";", "#X", 0, 77, 120, 193, 3, 6, 0, 0, ";", "#X", 0, 83, 120, 193, 3, 6, 0, 0, ";", "#X", 0, 38, 122, 249, 7, 8, 0, 0, ";", "#X", 0, 55, 122, 193, 7, 8, 0, 0, ";", "#X", 0, 38, 121, 249, 8, 9, 0, 0, ";", "#X", 0, 55, 121, 193, 8, 9, 0, 0, ";", "#X", 0, 67, 123, 209, 13, 12, 0, 0, ";", "#X", 0, 36, 122, 121, 11, 14, 0, 0, ";", "#X", 8, 81, 120, 121, 10, 13, 0, 0, ";", "#X", 362, 81, 120, 144, 10, 13, 0, 0, ";", "#X", 8, 36, 98, 369, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 241, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 4401, 10, 13, 0, 0, ";", "#X", 8, 48, 122, 393, 6, 2, 0, 0, ";", "#X", 0, 72, 123, 385, 6, 2, 0, 0, ";", "#X", 0, 48, 123, 193, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 225, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 249, 1, 4, 0, 0, ";", "#X", 0, 84, 123, 217, 1, 4, 0, 0, ";", "#X", 0, 96, 123, 241, 1, 4, 0, 0, ";", "#X", 0, 24, 120, 217, 3, 6, 0, 0, ";", "#X", 0, 48, 120, 193, 3, 6, 0, 0, ";", "#X", 0, 60, 120, 201, 3, 6, 0, 0, ";", "#X", 0, 72, 120, 217, 3, 6, 0, 0, ";", "#X", 0, 12, 121, 393, 7, 8, 0, 0, ";", "#X", 0, 36, 122, 385, 7, 8, 0, 0, ";", "#X", 0, 36, 120, 393, 8, 9, 0, 0, ";", "#X", 0, 60, 121, 385, 8, 9, 0, 0, ";", "#X", 0, 72, 123, 225, 13, 12, 0, 0, ";", "#X", 0, 36, 123, 104, 11, 14, 0, 0, ";", "#X", 8, 24, 125, 177, 2, 5, 0, 0, ";", "#X", 377, 79, 119, 113, 8, 9, 0, 0, ";", "#X", 193, 79, 120, 153, 8, 9, 0, 0, ";", "#X", 193, 81, 120, 169, 8, 9, 0, 0, ";", "#X", 193, 79, 120, 891, 8, 9, 0, 0, ";", "#X", 193, 67, 113, 80, 3, 6, 0, 0, ";", "#X", 0, 43, 112, 64, 7, 8, 0, 0, ";", "#X", 0, 55, 111, 80, 7, 8, 0, 0, ";", "#X", 192, 67, 108, 185, 3, 6, 0, 0, ";", "#X", 0, 43, 113, 81, 7, 8, 0, 0, ";", "#X", 0, 55, 113, 81, 7, 8, 0, 0, ";", "#X", 193, 69, 118, 169, 3, 6, 0, 0, ";", "#X", 0, 45, 117, 201, 7, 8, 0, 0, ";", "#X", 0, 57, 116, 185, 7, 8, 0, 0, ";", "#X", 193, 67, 118, 409, 3, 6, 0, 0, ";", "#X", 0, 43, 116, 289, 7, 8, 0, 0, ";", "#X", 0, 55, 115, 185, 7, 8, 0, 0, ";", "#X", 185, 43, 121, 88, 2, 5, 0, 0, ";", "#X", 8, 72, 123, 88, 1, 4, 0, 0, ";", "#X", 0, 76, 121, 112, 1, 4, 0, 0, ";", "#X", 0, 48, 120, 96, 3, 6, 0, 0, ";", "#X", 0, 55, 120, 80, 3, 6, 0, 0, ";", "#X", 0, 64, 119, 120, 3, 6, 0, 0, ";", "#X", 0, 52, 121, 120, 7, 8, 0, 0, ";", "#X", 0, 55, 120, 88, 7, 8, 0, 0, ";", "#X", 0, 76, 120, 120, 8, 9, 0, 0, ";", "#X", 0, 79, 120, 96, 8, 9, 0, 0, ";", "#X", 0, 76, 122, 72, 13, 12, 0, 0, ";", "#X", 0, 36, 115, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 110, 56, 11, 14, 0, 0, ";", "#X", 32, 81, 103, 96, 10, 13, 0, 0, ";", "#X", 152, 43, 123, 105, 2, 5, 0, 0, ";", "#X", 8, 72, 123, 113, 1, 4, 0, 0, ";", "#X", 0, 76, 116, 121, 1, 4, 0, 0, ";", "#X", 0, 48, 113, 81, 3, 6, 0, 0, ";", "#X", 0, 55, 116, 81, 3, 6, 0, 0, ";", "#X", 0, 64, 118, 81, 3, 6, 0, 0, ";", "#X", 0, 43, 101, 16, 7, 8, 0, 0, ";", "#X", 0, 52, 118, 153, 7, 8, 0, 0, ";", "#X", 0, 55, 119, 338, 7, 8, 0, 0, ";", "#X", 0, 76, 118, 153, 8, 9, 0, 0, ";", "#X", 0, 79, 119, 338, 8, 9, 0, 0, ";", "#X", 0, 76, 123, 73, 13, 12, 0, 0, ";", "#X", 0, 36, 111, 65, 11, 14, 0, 0, ";", "#X", 0, 48, 110, 57, 11, 14, 0, 0, ";", "#X", 16, 81, 103, 89, 10, 13, 0, 0, ";", "#X", 169, 45, 121, 105, 2, 5, 0, 0, ";", "#X", 8, 74, 123, 88, 1, 4, 0, 0, ";", "#X", 0, 77, 122, 145, 1, 4, 0, 0, ";", "#X", 0, 50, 122, 80, 3, 6, 0, 0, ";", "#X", 0, 57, 119, 80, 3, 6, 0, 0, ";", "#X", 0, 65, 115, 80, 3, 6, 0, 0, ";", "#X", 0, 53, 119, 153, 7, 8, 0, 0, ";", "#X", 0, 77, 119, 153, 8, 9, 0, 0, ";", "#X", 0, 77, 124, 105, 13, 12, 0, 0, ";", "#X", 0, 36, 121, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 119, 72, 11, 14, 0, 0, ";", "#X", 24, 81, 114, 89, 10, 13, 0, 0, ";", "#X", 161, 43, 122, 88, 2, 5, 0, 0, ";", "#X", 8, 72, 118, 112, 1, 4, 0, 0, ";", "#X", 0, 76, 122, 136, 1, 4, 0, 0, ";", "#X", 0, 48, 108, 80, 3, 6, 0, 0, ";", "#X", 0, 55, 121, 80, 3, 6, 0, 0, ";", "#X", 0, 64, 120, 80, 3, 6, 0, 0, ";", "#X", 0, 52, 119, 128, 7, 8, 0, 0, ";", "#X", 0, 55, 119, 128, 7, 8, 0, 0, ";", "#X", 0, 76, 119, 128, 8, 9, 0, 0, ";", "#X", 0, 79, 119, 128, 8, 9, 0, 0, ";", "#X", 0, 76, 122, 88, 13, 12, 0, 0, ";", "#X", 0, 36, 117, 48, 11, 14, 0, 0, ";", "#X", 0, 48, 107, 40, 11, 14, 0, 0, ";", "#X", 24, 81, 117, 88, 10, 13, 0, 0, ";", "#X", 161, 41, 125, 88, 2, 5, 0, 0, ";", "#X", 8, 71, 123, 80, 1, 4, 0, 0, ";", "#X", 0, 74, 120, 80, 1, 4, 0, 0, ";", "#X", 0, 47, 119, 80, 3, 6, 0, 0, ";", "#X", 0, 53, 118, 80, 3, 6, 0, 0, ";", "#X", 0, 62, 119, 80, 3, 6, 0, 0, ";", "#X", 0, 50, 120, 120, 7, 8, 0, 0, ";", "#X", 0, 55, 119, 128, 7, 8, 0, 0, ";", "#X", 0, 74, 120, 120, 8, 9, 0, 0, ";", "#X", 0, 79, 119, 128, 8, 9, 0, 0, ";", "#X", 0, 74, 123, 104, 13, 12, 0, 0, ";", "#X", 0, 36, 122, 88, 11, 14, 0, 0, ";", "#X", 0, 48, 119, 72, 11, 14, 0, 0, ";", "#X", 24, 81, 117, 80, 10, 13, 0, 0, ";", "#X", 160, 40, 122, 105, 2, 5, 0, 0, ";", "#X", 8, 69, 123, 89, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 89, 1, 4, 0, 0, ";", "#X", 0, 45, 119, 81, 3, 6, 0, 0, ";", "#X", 0, 52, 121, 81, 3, 6, 0, 0, ";", "#X", 0, 60, 119, 73, 3, 6, 0, 0, ";", "#X", 0, 48, 120, 105, 7, 8, 0, 0, ";", "#X", 0, 55, 119, 121, 7, 8, 0, 0, ";", "#X", 0, 72, 120, 105, 8, 9, 0, 0, ";", "#X", 0, 79, 119, 121, 8, 9, 0, 0, ";", "#X", 0, 72, 122, 89, 13, 12, 0, 0, ";", "#X", 0, 36, 121, 73, 11, 14, 0, 0, ";", "#X", 0, 48, 119, 73, 11, 14, 0, 0, ";", "#X", 25, 81, 118, 96, 10, 13, 0, 0, ";", "#X", 160, 38, 121, 305, 2, 5, 0, 0, ";", "#X", 8, 67, 123, 137, 1, 4, 0, 0, ";", "#X", 0, 71, 123, 137, 1, 4, 0, 0, ";", "#X", 0, 43, 123, 241, 3, 6, 0, 0, ";", "#X", 0, 50, 123, 225, 3, 6, 0, 0, ";", "#X", 0, 59, 122, 241, 3, 6, 0, 0, ";", "#X", 0, 47, 121, 201, 7, 8, 0, 0, ";", "#X", 0, 55, 121, 217, 7, 8, 0, 0, ";", "#X", 0, 71, 120, 201, 8, 9, 0, 0, ";", "#X", 0, 79, 120, 217, 8, 9, 0, 0, ";", "#X", 0, 71, 122, 209, 13, 12, 0, 0, ";", "#X", 0, 36, 121, 81, 11, 14, 0, 0, ";", "#X", 0, 48, 121, 89, 11, 14, 0, 0, ";", "#X", 32, 81, 120, 97, 10, 13, 0, 0, ";", "#X", 354, 62, 123, 144, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 281, 1, 4, 0, 0, ";", "#X", 0, 71, 123, 337, 1, 4, 0, 0, ";", "#X", 0, 55, 113, 377, 4, 7, 0, 0, ";", "#X", 0, 55, 119, 289, 7, 8, 0, 0, ";", "#X", 8, 79, 119, 289, 8, 9, 0, 0, ";", "#X", 369, 36, 123, 474, 2, 5, 0, 0, ";", "#X", 0, 38, 110, 89, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 546, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 2153, 10, 13, 0, 0, ";", "#X", 8, 48, 119, 458, 1, 4, 0, 0, ";", "#X", 0, 55, 123, 482, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 458, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 418, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 450, 1, 4, 0, 0, ";", "#X", 0, 72, 122, 450, 1, 4, 0, 0, ";", "#X", 0, 55, 119, 450, 3, 6, 0, 0, ";", "#X", 0, 60, 119, 458, 3, 6, 0, 0, ";", "#X", 0, 48, 113, 763, 4, 7, 0, 0, ";", "#X", 0, 52, 113, 691, 4, 7, 0, 0, ";", "#X", 0, 60, 113, 763, 4, 7, 0, 0, ";", "#X", 0, 59, 121, 16, 7, 8, 0, 0, ";", "#X", 0, 60, 118, 450, 7, 8, 0, 0, ";", "#X", 16, 84, 119, 450, 8, 9, 0, 0, ";", "#X", 8, 83, 120, 16, 8, 9, 0, 0, ";", "#X", 0, 81, 120, 97, 10, 13, 0, 0, ";", "#X", 362, 81, 106, 112, 10, 13, 0, 0, ";", "#X", 169, 84, 120, 120, 8, 9, 0, 0, ";", "#X", 16, 36, 122, 176, 2, 5, 0, 0, ";", "#X", 0, 35, 119, 192, 10, 13, 0, 0, ";", "#X", 0, 57, 119, 192, 10, 13, 0, 0, ";", "#X", 8, 48, 121, 88, 1, 4, 0, 0, ";", "#X", 0, 55, 117, 184, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 144, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 88, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 160, 1, 4, 0, 0, ";", "#X", 0, 72, 122, 152, 1, 4, 0, 0, ";", "#X", 0, 55, 117, 96, 3, 6, 0, 0, ";", "#X", 0, 60, 110, 112, 3, 6, 0, 0, ";", "#X", 0, 60, 120, 112, 7, 8, 0, 0, ";", "#X", 0, 36, 117, 80, 11, 14, 0, 0, ";", "#X", 0, 48, 110, 80, 11, 14, 0, 0, ";", "#X", 184, 33, 121, 378, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 193, 10, 13, 0, 0, ";", "#X", 0, 52, 124, 579, 10, 13, 0, 0, ";", "#X", 8, 53, 122, 169, 1, 4, 0, 0, ";", "#X", 0, 60, 121, 177, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 129, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 161, 1, 4, 0, 0, ";", "#X", 0, 72, 122, 145, 1, 4, 0, 0, ";", "#X", 0, 53, 119, 81, 3, 6, 0, 0, ";", "#X", 0, 57, 119, 89, 3, 6, 0, 0, ";", "#X", 0, 60, 117, 129, 3, 6, 0, 0, ";", "#X", 0, 53, 113, 755, 4, 7, 0, 0, ";", "#X", 0, 57, 113, 763, 4, 7, 0, 0, ";", "#X", 0, 60, 121, 145, 7, 8, 0, 0, ";", "#X", 0, 84, 120, 145, 8, 9, 0, 0, ";", "#X", 0, 81, 117, 97, 10, 13, 0, 0, ";", "#X", 0, 36, 122, 73, 11, 14, 0, 0, ";", "#X", 0, 48, 122, 89, 11, 14, 0, 0, ";", "#X", 378, 33, 120, 88, 2, 5, 0, 0, ";", "#X", 0, 84, 119, 112, 8, 9, 0, 0, ";", "#X", 8, 53, 119, 112, 1, 4, 0, 0, ";", "#X", 0, 60, 122, 104, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 80, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 88, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 120, 1, 4, 0, 0, ";", "#X", 0, 53, 119, 72, 3, 6, 0, 0, ";", "#X", 0, 57, 119, 88, 3, 6, 0, 0, ";", "#X", 0, 60, 119, 104, 3, 6, 0, 0, ";", "#X", 0, 60, 119, 112, 7, 8, 0, 0, ";", "#X", 40, 81, 116, 80, 10, 13, 0, 0, ";", "#X", 129, 84, 118, 152, 8, 9, 0, 0, ";", "#X", 16, 33, 118, 104, 2, 5, 0, 0, ";", "#X", 8, 53, 119, 160, 1, 4, 0, 0, ";", "#X", 0, 60, 119, 112, 1, 4, 0, 0, ";", "#X", 0, 65, 122, 80, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 120, 1, 4, 0, 0, ";", "#X", 0, 72, 122, 144, 1, 4, 0, 0, ";", "#X", 0, 53, 114, 80, 3, 6, 0, 0, ";", "#X", 0, 57, 114, 64, 3, 6, 0, 0, ";", "#X", 0, 60, 111, 112, 3, 6, 0, 0, ";", "#X", 0, 60, 117, 144, 7, 8, 0, 0, ";", "#X", 176, 83, 119, 129, 8, 9, 0, 0, ";", "#X", 8, 35, 124, 450, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 298, 10, 13, 0, 0, ";", "#X", 0, 55, 127, 298, 10, 13, 0, 0, ";", "#X", 8, 52, 123, 113, 1, 4, 0, 0, ";", "#X", 0, 59, 123, 113, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 89, 1, 4, 0, 0, ";", "#X", 0, 68, 122, 113, 1, 4, 0, 0, ";", "#X", 0, 71, 123, 129, 1, 4, 0, 0, ";", "#X", 0, 52, 118, 73, 3, 6, 0, 0, ";", "#X", 0, 56, 118, 89, 3, 6, 0, 0, ";", "#X", 0, 59, 118, 113, 3, 6, 0, 0, ";", "#X", 0, 52, 113, 764, 4, 7, 0, 0, ";", "#X", 0, 56, 113, 764, 4, 7, 0, 0, ";", "#X", 0, 59, 113, 764, 4, 7, 0, 0, ";", "#X", 0, 59, 118, 129, 7, 8, 0, 0, ";", "#X", 0, 36, 122, 97, 11, 14, 0, 0, ";", "#X", 0, 48, 122, 65, 11, 14, 0, 0, ";", "#X", 25, 81, 118, 96, 10, 13, 0, 0, ";", "#X", 160, 83, 118, 121, 8, 9, 0, 0, ";", "#X", 8, 52, 113, 105, 1, 4, 0, 0, ";", "#X", 0, 59, 123, 105, 1, 4, 0, 0, ";", "#X", 0, 64, 121, 97, 1, 4, 0, 0, ";", "#X", 0, 68, 123, 121, 1, 4, 0, 0, ";", "#X", 0, 71, 120, 113, 1, 4, 0, 0, ";", "#X", 0, 52, 106, 65, 3, 6, 0, 0, ";", "#X", 0, 56, 107, 97, 3, 6, 0, 0, ";", "#X", 0, 59, 110, 97, 3, 6, 0, 0, ";", "#X", 0, 59, 116, 121, 7, 8, 0, 0, ";", "#X", 185, 35, 123, 257, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 2538, 10, 13, 0, 0, ";", "#X", 8, 52, 112, 88, 1, 4, 0, 0, ";", "#X", 0, 59, 122, 88, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 80, 1, 4, 0, 0, ";", "#X", 0, 68, 122, 96, 1, 4, 0, 0, ";", "#X", 0, 71, 122, 96, 1, 4, 0, 0, ";", "#X", 0, 52, 116, 80, 3, 6, 0, 0, ";", "#X", 0, 56, 116, 96, 3, 6, 0, 0, ";", "#X", 0, 59, 117, 104, 3, 6, 0, 0, ";", "#X", 0, 59, 119, 120, 7, 8, 0, 0, ";", "#X", 0, 83, 119, 120, 8, 9, 0, 0, ";", "#X", 16, 81, 116, 96, 10, 13, 0, 0, ";", "#X", 169, 35, 124, 136, 2, 5, 0, 0, ";", "#X", 8, 52, 122, 112, 1, 4, 0, 0, ";", "#X", 0, 59, 123, 80, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 96, 1, 4, 0, 0, ";", "#X", 0, 68, 123, 136, 1, 4, 0, 0, ";", "#X", 0, 71, 121, 136, 1, 4, 0, 0, ";", "#X", 0, 52, 116, 80, 3, 6, 0, 0, ";", "#X", 0, 56, 116, 120, 3, 6, 0, 0, ";", "#X", 0, 59, 115, 128, 3, 6, 0, 0, ";", "#X", 0, 59, 117, 152, 7, 8, 0, 0, ";", "#X", 0, 83, 118, 152, 8, 9, 0, 0, ";", "#X", 0, 36, 118, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 115, 72, 11, 14, 0, 0, ";", "#X", 185, 40, 123, 457, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 658, 10, 13, 0, 0, ";", "#X", 0, 57, 123, 626, 10, 13, 0, 0, ";", "#X", 8, 45, 123, 176, 1, 4, 0, 0, ";", "#X", 0, 57, 123, 192, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 176, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 152, 1, 4, 0, 0, ";", "#X", 0, 72, 122, 160, 1, 4, 0, 0, ";", "#X", 0, 52, 118, 136, 3, 6, 0, 0, ";", "#X", 0, 57, 119, 152, 3, 6, 0, 0, ";", "#X", 0, 60, 116, 168, 3, 6, 0, 0, ";", "#X", 0, 57, 113, 626, 4, 7, 0, 0, ";", "#X", 0, 60, 113, 763, 4, 7, 0, 0, ";", "#X", 0, 52, 121, 216, 7, 8, 0, 0, ";", "#X", 0, 36, 121, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 122, 72, 11, 14, 0, 0, ";", "#X", 8, 76, 120, 216, 8, 9, 0, 0, ";", "#X", 8, 81, 119, 96, 10, 13, 0, 0, ";", "#X", 369, 45, 122, 88, 1, 4, 0, 0, ";", "#X", 0, 57, 123, 129, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 121, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 121, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 145, 1, 4, 0, 0, ";", "#X", 0, 52, 120, 153, 3, 6, 0, 0, ";", "#X", 0, 57, 122, 177, 3, 6, 0, 0, ";", "#X", 0, 60, 118, 169, 3, 6, 0, 0, ";", "#X", 0, 52, 121, 289, 7, 8, 0, 0, ";", "#X", 8, 76, 120, 289, 8, 9, 0, 0, ";", "#X", 32, 81, 118, 113, 10, 13, 0, 0, ";", "#X", 145, 40, 123, 177, 2, 5, 0, 0, ";", "#X", 193, 36, 123, 1020, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 281, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 4530, 10, 13, 0, 0, ";", "#X", 8, 48, 121, 1148, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 1221, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 1413, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 1453, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 1429, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 1494, 1, 4, 0, 0, ";", "#X", 0, 52, 118, 1502, 3, 6, 0, 0, ";", "#X", 0, 55, 119, 4281, 3, 6, 0, 0, ";", "#X", 0, 58, 103, 4233, 3, 6, 0, 0, ";", "#X", 0, 48, 113, 1518, 4, 7, 0, 0, ";", "#X", 0, 55, 113, 24, 4, 7, 0, 0, ";", "#X", 0, 58, 113, 1534, 4, 7, 0, 0, ";", "#X", 0, 50, 120, 771, 7, 8, 0, 0, ";", "#X", 0, 36, 122, 112, 11, 14, 0, 0, ";", "#X", 0, 48, 119, 96, 11, 14, 0, 0, ";", "#X", 8, 74, 120, 1333, 8, 9, 0, 0, ";", "#X", 32, 81, 117, 96, 10, 13, 0, 0, ";", "#X", 337, 35, 123, 233, 10, 13, 0, 0, ";", "#X", 8, 36, 107, 64, 11, 14, 0, 0, ";", "#X", 0, 48, 107, 72, 11, 14, 0, 0, ";", "#X", 16, 81, 115, 113, 10, 13, 0, 0, ";", "#X", 362, 35, 123, 289, 10, 13, 0, 0, ";", "#X", 8, 81, 117, 112, 10, 13, 0, 0, ";", "#X", 0, 36, 108, 48, 11, 14, 0, 0, ";", "#X", 193, 48, 80, 32, 11, 14, 0, 0, ";", "#X", 184, 36, 123, 257, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 249, 10, 13, 0, 0, ";", "#X", 0, 81, 116, 105, 10, 13, 0, 0, ";", "#X", 8, 36, 110, 65, 11, 14, 0, 0, ";", "#X", 0, 48, 110, 73, 11, 14, 0, 0, ";", "#X", 193, 48, 119, 96, 7, 8, 0, 0, ";", "#X", 0, 72, 119, 96, 8, 9, 0, 0, ";", "#X", 104, 74, 118, 89, 8, 9, 0, 0, ";", "#X", 65, 81, 107, 112, 10, 13, 0, 0, ";", "#X", 16, 36, 122, 1253, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 249, 10, 13, 0, 0, ";", "#X", 0, 57, 123, 1389, 10, 13, 0, 0, ";", "#X", 8, 52, 123, 1189, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 1229, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 1213, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 1156, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 1173, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 1221, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 1213, 1, 4, 0, 0, ";", "#X", 0, 60, 107, 2779, 3, 6, 0, 0, ";", "#X", 0, 64, 116, 1558, 3, 6, 0, 0, ";", "#X", 0, 52, 113, 1534, 4, 7, 0, 0, ";", "#X", 0, 64, 113, 1397, 4, 7, 0, 0, ";", "#X", 0, 67, 113, 1494, 4, 7, 0, 0, ";", "#X", 0, 72, 118, 80, 8, 9, 0, 0, ";", "#X", 0, 36, 110, 72, 11, 14, 0, 0, ";", "#X", 0, 48, 108, 72, 11, 14, 0, 0, ";", "#X", 96, 74, 119, 72, 8, 9, 0, 0, ";", "#X", 81, 72, 118, 96, 8, 9, 0, 0, ";", "#X", 88, 74, 119, 8, 8, 9, 0, 0, ";", "#X", 88, 72, 117, 97, 8, 9, 0, 0, ";", "#X", 24, 35, 123, 233, 10, 13, 0, 0, ";", "#X", 0, 81, 110, 97, 10, 13, 0, 0, ";", "#X", 8, 36, 110, 73, 11, 14, 0, 0, ";", "#X", 0, 48, 105, 73, 11, 14, 0, 0, ";", "#X", 57, 74, 119, 64, 8, 9, 0, 0, ";", "#X", 88, 72, 117, 88, 8, 9, 0, 0, ";", "#X", 80, 74, 119, 81, 8, 9, 0, 0, ";", "#X", 97, 72, 118, 88, 8, 9, 0, 0, ";", "#X", 56, 35, 124, 273, 10, 13, 0, 0, ";", "#X", 0, 81, 111, 96, 10, 13, 0, 0, ";", "#X", 8, 36, 112, 80, 11, 14, 0, 0, ";", "#X", 0, 48, 112, 72, 11, 14, 0, 0, ";", "#X", 24, 74, 119, 80, 8, 9, 0, 0, ";", "#X", 96, 72, 118, 89, 8, 9, 0, 0, ";", "#X", 81, 74, 119, 80, 8, 9, 0, 0, ";", "#X", 104, 72, 119, 88, 8, 9, 0, 0, ";", "#X", 72, 35, 123, 265, 10, 13, 0, 0, ";", "#X", 0, 81, 112, 97, 10, 13, 0, 0, ";", "#X", 8, 74, 118, 65, 8, 9, 0, 0, ";", "#X", 0, 36, 116, 57, 11, 14, 0, 0, ";", "#X", 0, 48, 119, 65, 11, 14, 0, 0, ";", "#X", 89, 72, 118, 88, 8, 9, 0, 0, ";", "#X", 88, 74, 119, 80, 8, 9, 0, 0, ";", "#X", 8, 36, 122, 105, 2, 5, 0, 0, ";", "#X", 97, 72, 119, 96, 8, 9, 0, 0, ";", "#X", 80, 81, 113, 96, 10, 13, 0, 0, ";", "#X", 8, 74, 119, 72, 8, 9, 0, 0, ";", "#X", 8, 36, 123, 193, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 273, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 3173, 10, 13, 0, 0, ";", "#X", 8, 55, 123, 1181, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 1237, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 1173, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 1229, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 1173, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 1189, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 1213, 1, 4, 0, 0, ";", "#X", 0, 76, 123, 1237, 1, 4, 0, 0, ";", "#X", 0, 67, 113, 1582, 3, 6, 0, 0, ";", "#X", 0, 55, 113, 1534, 4, 7, 0, 0, ";", "#X", 0, 67, 113, 1534, 4, 7, 0, 0, ";", "#X", 80, 72, 118, 81, 8, 9, 0, 0, ";", "#X", 81, 74, 119, 64, 8, 9, 0, 0, ";", "#X", 32, 47, 74, 16, 11, 14, 0, 0, ";", "#X", 0, 48, 107, 56, 11, 14, 0, 0, ";", "#X", 64, 72, 118, 80, 8, 9, 0, 0, ";", "#X", 80, 74, 119, 81, 8, 9, 0, 0, ";", "#X", 40, 35, 122, 274, 10, 13, 0, 0, ";", "#X", 0, 81, 112, 97, 10, 13, 0, 0, ";", "#X", 9, 48, 98, 8, 11, 14, 0, 0, ";", "#X", 56, 72, 118, 80, 8, 9, 0, 0, ";", "#X", 80, 74, 119, 80, 8, 9, 0, 0, ";", "#X", 56, 48, 100, 48, 11, 14, 0, 0, ";", "#X", 48, 72, 118, 9, 8, 9, 0, 0, ";", "#X", 81, 74, 119, 80, 8, 9, 0, 0, ";", "#X", 56, 35, 123, 273, 10, 13, 0, 0, ";", "#X", 0, 81, 111, 96, 10, 13, 0, 0, ";", "#X", 8, 48, 91, 56, 11, 14, 0, 0, ";", "#X", 40, 72, 119, 81, 8, 9, 0, 0, ";", "#X", 89, 74, 118, 72, 8, 9, 0, 0, ";", "#X", 64, 48, 122, 56, 11, 14, 0, 0, ";", "#X", 24, 72, 119, 96, 8, 9, 0, 0, ";", "#X", 96, 74, 118, 65, 8, 9, 0, 0, ";", "#X", 65, 72, 117, 88, 8, 9, 0, 0, ";", "#X", 0, 35, 123, 289, 10, 13, 0, 0, ";", "#X", 0, 81, 111, 96, 10, 13, 0, 0, ";", "#X", 8, 48, 118, 56, 11, 14, 0, 0, ";", "#X", 80, 74, 117, 72, 8, 9, 0, 0, ";", "#X", 56, 72, 117, 97, 8, 9, 0, 0, ";", "#X", 56, 48, 117, 57, 11, 14, 0, 0, ";", "#X", 57, 71, 111, 88, 8, 9, 0, 0, ";", "#X", 80, 72, 119, 1695, 8, 9, 0, 0, ";", "#X", 8, 81, 115, 96, 10, 13, 0, 0, ";", "#X", 40, 35, 124, 257, 10, 13, 0, 0, ";", "#X", 0, 49, 124, 9936, 10, 13, 0, 0, ";", "#X", 8, 60, 123, 2040, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 2024, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 2032, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 2000, 1, 4, 0, 0, ";", "#X", 0, 76, 123, 2008, 1, 4, 0, 0, ";", "#X", 0, 82, 123, 2008, 1, 4, 0, 0, ";", "#X", 0, 84, 123, 2016, 1, 4, 0, 0, ";", "#X", 0, 60, 119, 1301, 3, 6, 0, 0, ";", "#X", 0, 72, 113, 1301, 3, 6, 0, 0, ";", "#X", 0, 84, 115, 1261, 3, 6, 0, 0, ";", "#X", 0, 64, 113, 1542, 4, 7, 0, 0, ";", "#X", 0, 70, 113, 1558, 4, 7, 0, 0, ";", "#X", 0, 72, 113, 1542, 4, 7, 0, 0, ";", "#X", 105, 81, 102, 8, 10, 13, 0, 0, ";", "#X", 88, 48, 90, 8, 11, 14, 0, 0, ";", "#X", 16, 81, 112, 64, 10, 13, 0, 0, ";", "#X", 137, 81, 105, 8, 10, 13, 0, 0, ";", "#X", 40, 48, 89, 8, 11, 14, 0, 0, ";", "#X", 80, 81, 115, 32, 10, 13, 0, 0, ";", "#X", 112, 48, 86, 57, 11, 14, 0, 0, ";", "#X", 193, 48, 123, 105, 11, 14, 0, 0, ";", "#X", 193, 48, 86, 104, 11, 14, 0, 0, ";", "#X", 193, 48, 91, 96, 11, 14, 0, 0, ";", "#X", 185, 40, 119, 96, 10, 13, 0, 0, ";", "#X", 8, 48, 123, 112, 11, 14, 0, 0, ";", "#X", 192, 48, 97, 81, 11, 14, 0, 0, ";", "#X", 57, 40, 122, 96, 10, 13, 0, 0, ";", "#X", 136, 48, 123, 96, 11, 14, 0, 0, ";", "#X", 121, 45, 122, 96, 10, 13, 0, 0, ";", "#X", 72, 48, 122, 104, 11, 14, 0, 0, ";", "#X", 185, 41, 125, 506, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 321, 10, 13, 0, 0, ";", "#X", 0, 49, 122, 13148, 10, 13, 0, 0, ";", "#X", 8, 65, 123, 530, 1, 4, 0, 0, ";", "#X", 0, 53, 122, 554, 9, 10, 0, 0, ";", "#X", 192, 48, 123, 105, 11, 14, 0, 0, ";", "#X", 193, 53, 117, 554, 12, 11, 0, 0, ";", "#X", 121, 33, 124, 457, 2, 5, 0, 0, ";", "#X", 0, 35, 120, 795, 10, 13, 0, 0, ";", "#X", 8, 57, 123, 538, 1, 4, 0, 0, ";", "#X", 0, 45, 122, 514, 9, 10, 0, 0, ";", "#X", 249, 40, 121, 1309, 10, 13, 0, 0, ";", "#X", 0, 42, 121, 923, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 393, 10, 13, 0, 0, ";", "#X", 136, 45, 117, 514, 12, 11, 0, 0, ";", "#X", 121, 34, 124, 482, 2, 5, 0, 0, ";", "#X", 8, 58, 122, 450, 1, 4, 0, 0, ";", "#X", 0, 46, 121, 3574, 9, 10, 0, 0, ";", "#X", 385, 46, 115, 3575, 12, 11, 0, 0, ";", "#X", 121, 35, 125, 530, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 361, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 377, 10, 13, 0, 0, ";", "#X", 8, 59, 123, 417, 1, 4, 0, 0, ";", "#X", 0, 47, 121, 498, 9, 10, 0, 0, ";", "#X", 385, 47, 116, 498, 12, 11, 0, 0, ";", "#X", 121, 36, 124, 297, 2, 5, 0, 0, ";", "#X", 0, 35, 120, 835, 10, 13, 0, 0, ";", "#X", 8, 60, 122, 209, 1, 4, 0, 0, ";", "#X", 0, 48, 121, 305, 9, 10, 0, 0, ";", "#X", 249, 38, 119, 233, 2, 5, 0, 0, ";", "#X", 0, 40, 121, 1357, 10, 13, 0, 0, ";", "#X", 0, 42, 121, 1044, 10, 13, 0, 0, ";", "#X", 0, 51, 121, 393, 10, 13, 0, 0, ";", "#X", 8, 62, 123, 209, 1, 4, 0, 0, ";", "#X", 0, 50, 119, 265, 9, 10, 0, 0, ";", "#X", 128, 48, 115, 306, 12, 11, 0, 0, ";", "#X", 121, 40, 120, 201, 2, 5, 0, 0, ";", "#X", 8, 64, 123, 241, 1, 4, 0, 0, ";", "#X", 0, 52, 121, 353, 9, 10, 0, 0, ";", "#X", 128, 50, 113, 265, 12, 11, 0, 0, ";", "#X", 121, 41, 123, 136, 2, 5, 0, 0, ";", "#X", 8, 65, 122, 193, 1, 4, 0, 0, ";", "#X", 0, 53, 121, 169, 9, 10, 0, 0, ";", "#X", 128, 52, 116, 354, 12, 11, 0, 0, ";", "#X", 121, 41, 124, 562, 2, 5, 0, 0, ";", "#X", 0, 35, 120, 353, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 450, 10, 13, 0, 0, ";", "#X", 8, 65, 122, 530, 1, 4, 0, 0, ";", "#X", 0, 53, 121, 546, 9, 10, 0, 0, ";", "#X", 128, 53, 115, 169, 12, 11, 0, 0, ";", "#X", 258, 53, 115, 546, 12, 11, 0, 0, ";", "#X", 120, 33, 124, 602, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 843, 10, 13, 0, 0, ";", "#X", 8, 57, 123, 546, 1, 4, 0, 0, ";", "#X", 0, 45, 121, 602, 9, 10, 0, 0, ";", "#X", 249, 40, 123, 1325, 10, 13, 0, 0, ";", "#X", 0, 42, 121, 1125, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 442, 10, 13, 0, 0, ";", "#X", 137, 45, 115, 602, 12, 11, 0, 0, ";", "#X", 120, 34, 121, 394, 2, 5, 0, 0, ";", "#X", 8, 58, 122, 490, 1, 4, 0, 0, ";", "#X", 0, 46, 121, 3615, 9, 10, 0, 0, ";", "#X", 386, 46, 115, 3614, 12, 11, 0, 0, ";", "#X", 120, 35, 121, 241, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 313, 10, 13, 0, 0, ";", "#X", 0, 51, 121, 418, 10, 13, 0, 0, ";", "#X", 8, 59, 123, 329, 1, 4, 0, 0, ";", "#X", 0, 47, 120, 329, 9, 10, 0, 0, ";", "#X", 249, 36, 118, 209, 2, 5, 0, 0, ";", "#X", 8, 60, 123, 185, 1, 4, 0, 0, ";", "#X", 0, 48, 117, 209, 9, 10, 0, 0, ";", "#X", 129, 47, 114, 329, 12, 11, 0, 0, ";", "#X", 120, 38, 118, 249, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 370, 10, 13, 0, 0, ";", "#X", 8, 62, 123, 338, 1, 4, 0, 0, ";", "#X", 0, 50, 121, 273, 9, 10, 0, 0, ";", "#X", 129, 48, 110, 209, 12, 11, 0, 0, ";", "#X", 120, 36, 124, 811, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 1325, 10, 13, 0, 0, ";", "#X", 0, 42, 121, 1076, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 482, 10, 13, 0, 0, ";", "#X", 8, 60, 123, 659, 1, 4, 0, 0, ";", "#X", 0, 48, 123, 659, 9, 10, 0, 0, ";", "#X", 129, 50, 116, 273, 12, 11, 0, 0, ";", "#X", 257, 48, 117, 658, 12, 11, 0, 0, ";", "#X", 120, 35, 120, 137, 10, 13, 0, 0, ";", "#X", 257, 41, 125, 522, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 410, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 434, 10, 13, 0, 0, ";", "#X", 8, 65, 123, 555, 1, 4, 0, 0, ";", "#X", 0, 53, 120, 555, 9, 10, 0, 0, ";", "#X", 386, 53, 114, 554, 12, 11, 0, 0, ";", "#X", 120, 33, 123, 530, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 844, 10, 13, 0, 0, ";", "#X", 8, 57, 123, 522, 1, 4, 0, 0, ";", "#X", 0, 45, 120, 474, 9, 10, 0, 0, ";", "#X", 249, 40, 124, 1350, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 1229, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 434, 10, 13, 0, 0, ";", "#X", 137, 45, 114, 474, 12, 11, 0, 0, ";", "#X", 120, 34, 124, 498, 2, 5, 0, 0, ";", "#X", 8, 58, 122, 442, 1, 4, 0, 0, ";", "#X", 0, 46, 121, 14876, 9, 10, 0, 0, ";", "#X", 386, 46, 115, 14875, 12, 11, 0, 0, ";", "#X", 120, 35, 125, 474, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 290, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 482, 10, 13, 0, 0, ";", "#X", 8, 59, 123, 466, 1, 4, 0, 0, ";", "#X", 0, 47, 121, 555, 9, 10, 0, 0, ";", "#X", 386, 47, 115, 554, 12, 11, 0, 0, ";", "#X", 120, 35, 123, 828, 10, 13, 0, 0, ";", "#X", 1, 36, 122, 281, 2, 5, 0, 0, ";", "#X", 8, 60, 123, 216, 1, 4, 0, 0, ";", "#X", 0, 48, 119, 345, 9, 10, 0, 0, ";", "#X", 249, 38, 122, 216, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 1357, 10, 13, 0, 0, ";", "#X", 0, 42, 121, 1116, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 457, 10, 13, 0, 0, ";", "#X", 8, 62, 123, 232, 1, 4, 0, 0, ";", "#X", 0, 50, 120, 265, 9, 10, 0, 0, ";", "#X", 128, 48, 113, 345, 12, 11, 0, 0, ";", "#X", 121, 40, 122, 184, 2, 5, 0, 0, ";", "#X", 8, 64, 122, 337, 1, 4, 0, 0, ";", "#X", 0, 52, 119, 361, 9, 10, 0, 0, ";", "#X", 128, 50, 114, 265, 12, 11, 0, 0, ";", "#X", 121, 41, 119, 152, 2, 5, 0, 0, ";", "#X", 8, 65, 122, 184, 1, 4, 0, 0, ";", "#X", 0, 53, 118, 192, 9, 10, 0, 0, ";", "#X", 128, 52, 113, 362, 12, 11, 0, 0, ";", "#X", 121, 43, 125, 514, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 297, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 482, 10, 13, 0, 0, ";", "#X", 8, 67, 123, 514, 1, 4, 0, 0, ";", "#X", 0, 55, 122, 506, 9, 10, 0, 0, ";", "#X", 128, 53, 112, 193, 12, 11, 0, 0, ";", "#X", 257, 55, 117, 506, 12, 11, 0, 0, ";", "#X", 121, 35, 125, 658, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 731, 10, 13, 0, 0, ";", "#X", 8, 59, 123, 546, 1, 4, 0, 0, ";", "#X", 0, 47, 121, 634, 9, 10, 0, 0, ";", "#X", 249, 40, 123, 819, 10, 13, 0, 0, ";", "#X", 0, 42, 121, 1213, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 466, 10, 13, 0, 0, ";", "#X", 136, 47, 115, 635, 12, 11, 0, 0, ";", "#X", 121, 36, 121, 377, 2, 5, 0, 0, ";", "#X", 8, 60, 123, 442, 1, 4, 0, 0, ";", "#X", 0, 48, 116, 433, 9, 10, 0, 0, ";", "#X", 385, 48, 109, 434, 12, 11, 0, 0, ";", "#X", 121, 37, 119, 233, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 168, 10, 13, 0, 0, ";", "#X", 0, 51, 122, 450, 10, 13, 0, 0, ";", "#X", 8, 61, 122, 201, 1, 4, 0, 0, ";", "#X", 0, 49, 117, 57317, 9, 10, 0, 0, ";", "#X", 249, 38, 122, 201, 2, 5, 0, 0, ";", "#X", 0, 40, 122, 177, 10, 13, 0, 0, ";", "#X", 8, 62, 123, 233, 1, 4, 0, 0, ";", "#X", 128, 50, 121, 338, 9, 10, 0, 0, ";", "#X", 0, 49, 110, 57318, 12, 11, 0, 0, ";", "#X", 121, 40, 122, 265, 2, 5, 0, 0, ";", "#X", 0, 40, 121, 112, 10, 13, 0, 0, ";", "#X", 8, 64, 123, 209, 1, 4, 0, 0, ";", "#X", 128, 52, 118, 193, 9, 10, 0, 0, ";", "#X", 121, 38, 125, 723, 2, 5, 0, 0, ";", "#X", 0, 42, 121, 715, 10, 13, 0, 0, ";", "#X", 0, 43, 122, 152, 10, 13, 0, 0, ";", "#X", 0, 51, 123, 699, 10, 13, 0, 0, ";", "#X", 8, 62, 123, 321, 1, 4, 0, 0, ";", "#X", 0, 50, 114, 723, 9, 10, 0, 0, ";", "#X", 0, 50, 116, 337, 12, 11, 0, 0, ";", "#X", 249, 40, 121, 96, 10, 13, 0, 0, ";", "#X", 8, 52, 112, 193, 12, 11, 0, 0, ";", "#X", 128, 50, 107, 723, 12, 11, 0, 0, ";", "#X", 121, 45, 123, 273, 10, 13, 0, 0, ";", "#X", 257, 36, 125, 329, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 353, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 12217, 10, 13, 0, 0, ";", "#X", 8, 60, 123, 4369, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 3968, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 3783, 1, 4, 0, 0, ";", "#X", 0, 43, 123, 4683, 9, 10, 0, 0, ";", "#X", 0, 48, 121, 6161, 9, 10, 0, 0, ";", "#X", 386, 43, 117, 4682, 12, 11, 0, 0, ";", "#X", 0, 48, 115, 6160, 12, 11, 0, 0, ";", "#X", 104, 70, 122, 450, 5, 3, 0, 0, ";", "#X", 16, 36, 119, 137, 2, 5, 0, 0, ";", "#X", 0, 35, 119, 691, 10, 13, 0, 0, ";", "#X", 257, 36, 120, 402, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 1333, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 868, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1430, 10, 13, 0, 0, ";", "#X", 313, 70, 122, 346, 5, 3, 0, 0, ";", "#X", 201, 36, 104, 96, 2, 5, 0, 0, ";", "#X", 257, 36, 114, 386, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 281, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1189, 10, 13, 0, 0, ";", "#X", 88, 70, 123, 523, 5, 3, 0, 0, ";", "#X", 426, 36, 119, 97, 2, 5, 0, 0, ";", "#X", 0, 35, 120, 755, 10, 13, 0, 0, ";", "#X", 72, 69, 119, 370, 5, 3, 0, 0, ";", "#X", 185, 36, 122, 410, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 1326, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 755, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1181, 10, 13, 0, 0, ";", "#X", 321, 69, 118, 322, 5, 3, 0, 0, ";", "#X", 193, 36, 110, 113, 2, 5, 0, 0, ";", "#X", 257, 36, 116, 362, 2, 5, 0, 0, ";", "#X", 0, 35, 118, 273, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1310, 10, 13, 0, 0, ";", "#X", 40, 69, 122, 498, 5, 3, 0, 0, ";", "#X", 474, 36, 120, 137, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 747, 10, 13, 0, 0, ";", "#X", 65, 67, 123, 345, 5, 3, 0, 0, ";", "#X", 192, 36, 121, 281, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 1269, 10, 13, 0, 0, ";", "#X", 0, 46, 123, 1318, 10, 13, 0, 0, ";", "#X", 306, 67, 122, 273, 5, 3, 0, 0, ";", "#X", 208, 36, 116, 241, 2, 5, 0, 0, ";", "#X", 225, 67, 120, 747, 5, 3, 0, 0, ";", "#X", 32, 29, 125, 667, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 201, 10, 13, 0, 0, ";", "#X", 0, 46, 123, 1334, 10, 13, 0, 0, ";", "#X", 8, 60, 123, 1454, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 1358, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 1406, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 1270, 1, 4, 0, 0, ";", "#X", 0, 41, 121, 1486, 9, 10, 0, 0, ";", "#X", 386, 41, 115, 1486, 12, 11, 0, 0, ";", "#X", 121, 35, 122, 779, 10, 13, 0, 0, ";", "#X", 240, 65, 123, 739, 5, 3, 0, 0, ";", "#X", 17, 29, 125, 722, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 1236, 10, 13, 0, 0, ";", "#X", 0, 46, 123, 1341, 10, 13, 0, 0, ";", "#X", 747, 64, 123, 562, 5, 3, 0, 0, ";", "#X", 24, 36, 123, 321, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 265, 10, 13, 0, 0, ";", "#X", 0, 46, 123, 1381, 10, 13, 0, 0, ";", "#X", 8, 60, 123, 2923, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 2811, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 2747, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 2972, 1, 4, 0, 0, ";", "#X", 0, 43, 117, 2996, 9, 10, 0, 0, ";", "#X", 0, 48, 122, 40, 9, 10, 0, 0, ";", "#X", 385, 43, 110, 2996, 12, 11, 0, 0, ";", "#X", 0, 48, 117, 40, 12, 11, 0, 0, ";", "#X", 121, 36, 111, 144, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 739, 10, 13, 0, 0, ";", "#X", 64, 65, 123, 201, 5, 3, 0, 0, ";", "#X", 193, 36, 112, 257, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 1381, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1389, 10, 13, 0, 0, ";", "#X", 72, 67, 122, 2153, 5, 3, 0, 0, ";", "#X", 8, 65, 113, 56, 5, 3, 0, 0, ";", "#X", 434, 36, 121, 168, 2, 5, 0, 0, ";", "#X", 257, 36, 115, 369, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 249, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1430, 10, 13, 0, 0, ";", "#X", 514, 36, 114, 136, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 530, 10, 13, 0, 0, ";", "#X", 257, 36, 119, 369, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 787, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1373, 10, 13, 0, 0, ";", "#X", 514, 36, 110, 281, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 128, 10, 13, 0, 0, ";", "#X", 257, 31, 120, 193, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 161, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1189, 10, 13, 0, 0, ";", "#X", 8, 55, 122, 313, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 289, 1, 4, 0, 0, ";", "#X", 0, 43, 118, 329, 9, 10, 0, 0, ";", "#X", 249, 34, 120, 193, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 129, 10, 13, 0, 0, ";", "#X", 8, 58, 122, 289, 1, 4, 0, 0, ";", "#X", 0, 70, 122, 217, 1, 4, 0, 0, ";", "#X", 0, 46, 120, 980, 9, 10, 0, 0, ";", "#X", 129, 43, 112, 329, 12, 11, 0, 0, ";", "#X", 120, 36, 114, 129, 2, 5, 0, 0, ";", "#X", 0, 40, 122, 145, 10, 13, 0, 0, ";", "#X", 8, 60, 122, 169, 1, 4, 0, 0, ";", "#X", 0, 72, 122, 145, 1, 4, 0, 0, ";", "#X", 0, 48, 121, 193, 9, 10, 0, 0, ";", "#X", 129, 46, 114, 979, 12, 11, 0, 0, ";", "#X", 120, 36, 124, 249, 2, 5, 0, 0, ";", "#X", 0, 40, 122, 201, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 3711, 10, 13, 0, 0, ";", "#X", 8, 60, 117, 321, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 281, 1, 4, 0, 0, ";", "#X", 0, 48, 121, 289, 9, 10, 0, 0, ";", "#X", 129, 48, 115, 192, 12, 11, 0, 0, ";", "#X", 120, 34, 123, 169, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 386, 10, 13, 0, 0, ";", "#X", 8, 58, 123, 273, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 185, 1, 4, 0, 0, ";", "#X", 0, 46, 119, 11269, 9, 10, 0, 0, ";", "#X", 129, 48, 115, 289, 12, 11, 0, 0, ";", "#X", 120, 39, 125, 1325, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 257, 10, 13, 0, 0, ";", "#X", 0, 49, 124, 2603, 10, 13, 0, 0, ";", "#X", 8, 63, 123, 1639, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 1510, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 1639, 1, 4, 0, 0, ";", "#X", 0, 75, 122, 1655, 1, 4, 0, 0, ";", "#X", 0, 51, 121, 1839, 9, 10, 0, 0, ";", "#X", 129, 46, 113, 11269, 12, 11, 0, 0, ";", "#X", 257, 51, 115, 1839, 12, 11, 0, 0, ";", "#X", 891, 34, 123, 177, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 161, 10, 13, 0, 0, ";", "#X", 257, 35, 121, 177, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 169, 10, 13, 0, 0, ";", "#X", 257, 36, 120, 378, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 418, 10, 13, 0, 0, ";", "#X", 0, 49, 122, 6860, 10, 13, 0, 0, ";", "#X", 8, 60, 123, 4482, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 4434, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 4402, 1, 4, 0, 0, ";", "#X", 0, 43, 124, 4498, 9, 10, 0, 0, ";", "#X", 0, 48, 122, 6306, 9, 10, 0, 0, ";", "#X", 386, 43, 119, 4498, 12, 11, 0, 0, ";", "#X", 0, 48, 117, 6305, 12, 11, 0, 0, ";", "#X", 56, 70, 123, 354, 5, 3, 0, 0, ";", "#X", 64, 36, 116, 89, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 643, 10, 13, 0, 0, ";", "#X", 257, 36, 119, 370, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1390, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1422, 10, 13, 0, 0, ";", "#X", 225, 70, 120, 330, 5, 3, 0, 0, ";", "#X", 289, 36, 111, 161, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 121, 10, 13, 0, 0, ";", "#X", 257, 36, 113, 362, 2, 5, 0, 0, ";", "#X", 0, 35, 120, 402, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1438, 10, 13, 0, 0, ";", "#X", 25, 70, 122, 562, 5, 3, 0, 0, ";", "#X", 490, 36, 115, 144, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 554, 10, 13, 0, 0, ";", "#X", 48, 69, 119, 385, 5, 3, 0, 0, ";", "#X", 209, 36, 114, 200, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 1317, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1429, 10, 13, 0, 0, ";", "#X", 257, 34, 119, 144, 2, 5, 0, 0, ";", "#X", 136, 69, 123, 297, 5, 3, 0, 0, ";", "#X", 72, 67, 81, 81, 5, 3, 0, 0, ";", "#X", 49, 35, 112, 112, 2, 5, 0, 0, ";", "#X", 0, 35, 116, 152, 10, 13, 0, 0, ";", "#X", 257, 36, 123, 369, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 401, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1421, 10, 13, 0, 0, ";", "#X", 96, 69, 120, 546, 5, 3, 0, 0, ";", "#X", 418, 36, 112, 152, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 586, 10, 13, 0, 0, ";", "#X", 88, 67, 122, 329, 5, 3, 0, 0, ";", "#X", 169, 36, 116, 369, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 1333, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1413, 10, 13, 0, 0, ";", "#X", 289, 67, 120, 385, 5, 3, 0, 0, ";", "#X", 225, 36, 122, 225, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 144, 10, 13, 0, 0, ";", "#X", 257, 29, 123, 393, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 313, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1478, 10, 13, 0, 0, ";", "#X", 8, 53, 122, 1084, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 1349, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 1213, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 1333, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 1317, 1, 4, 0, 0, ";", "#X", 0, 41, 121, 1446, 9, 10, 0, 0, ";", "#X", 56, 67, 122, 715, 5, 3, 0, 0, ";", "#X", 329, 41, 115, 1446, 12, 11, 0, 0, ";", "#X", 121, 29, 119, 193, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 249, 10, 13, 0, 0, ";", "#X", 257, 29, 123, 353, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 193, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 2201, 10, 13, 0, 0, ";", "#X", 48, 65, 123, 659, 5, 3, 0, 0, ";", "#X", 209, 40, 122, 185, 10, 13, 0, 0, ";", "#X", 257, 29, 112, 185, 2, 5, 0, 0, ";", "#X", 0, 40, 121, 835, 10, 13, 0, 0, ";", "#X", 257, 70, 123, 659, 5, 3, 0, 0, ";", "#X", 0, 34, 122, 297, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 426, 10, 13, 0, 0, ";", "#X", 0, 49, 122, 3823, 10, 13, 0, 0, ";", "#X", 8, 58, 123, 3125, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 2819, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 2747, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 2964, 1, 4, 0, 0, ";", "#X", 0, 74, 123, 2843, 1, 4, 0, 0, ";", "#X", 0, 46, 121, 12273, 9, 10, 0, 0, ";", "#X", 0, 53, 121, 3068, 9, 10, 0, 0, ";", "#X", 386, 46, 116, 12273, 12, 11, 0, 0, ";", "#X", 0, 53, 116, 3068, 12, 11, 0, 0, ";", "#X", 120, 34, 118, 201, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 554, 10, 13, 0, 0, ";", "#X", 161, 67, 122, 192, 5, 3, 0, 0, ";", "#X", 96, 34, 121, 329, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1357, 10, 13, 0, 0, ";", "#X", 0, 46, 123, 1414, 10, 13, 0, 0, ";", "#X", 113, 65, 123, 2200, 5, 3, 0, 0, ";", "#X", 401, 34, 121, 201, 2, 5, 0, 0, ";", "#X", 0, 35, 120, 137, 10, 13, 0, 0, ";", "#X", 257, 34, 121, 249, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 313, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1438, 10, 13, 0, 0, ";", "#X", 514, 34, 121, 169, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 410, 10, 13, 0, 0, ";", "#X", 257, 34, 124, 185, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 281, 10, 13, 0, 0, ";", "#X", 0, 46, 123, 2201, 10, 13, 0, 0, ";", "#X", 257, 34, 122, 177, 2, 5, 0, 0, ";", "#X", 0, 43, 121, 297, 10, 13, 0, 0, ";", "#X", 257, 33, 120, 249, 2, 5, 0, 0, ";", "#X", 0, 45, 121, 563, 10, 13, 0, 0, ";", "#X", 257, 31, 123, 410, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 370, 10, 13, 0, 0, ";", "#X", 0, 49, 122, 3800, 10, 13, 0, 0, ";", "#X", 8, 55, 122, 2884, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 2908, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 2812, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 2836, 1, 4, 0, 0, ";", "#X", 0, 74, 123, 2603, 1, 4, 0, 0, ";", "#X", 0, 43, 120, 2964, 9, 10, 0, 0, ";", "#X", 0, 50, 122, 3165, 9, 10, 0, 0, ";", "#X", 73, 70, 122, 3108, 5, 3, 0, 0, ";", "#X", 24, 69, 115, 120, 5, 3, 0, 0, ";", "#X", 289, 43, 114, 2964, 12, 11, 0, 0, ";", "#X", 0, 50, 117, 3165, 12, 11, 0, 0, ";", "#X", 120, 31, 121, 129, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 378, 10, 13, 0, 0, ";", "#X", 257, 31, 119, 354, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1422, 10, 13, 0, 0, ";", "#X", 0, 46, 123, 1310, 10, 13, 0, 0, ";", "#X", 514, 31, 117, 169, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 153, 10, 13, 0, 0, ";", "#X", 257, 31, 119, 338, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 370, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1406, 10, 13, 0, 0, ";", "#X", 515, 31, 116, 168, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 353, 10, 13, 0, 0, ";", "#X", 257, 31, 115, 200, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1293, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 2072, 10, 13, 0, 0, ";", "#X", 257, 34, 115, 200, 2, 5, 0, 0, ";", "#X", 257, 35, 112, 208, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 160, 10, 13, 0, 0, ";", "#X", 257, 36, 119, 409, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 393, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 10618, 10, 13, 0, 0, ";", "#X", 8, 60, 123, 3084, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 2715, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 2835, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 2980, 1, 4, 0, 0, ";", "#X", 0, 76, 123, 2956, 1, 4, 0, 0, ";", "#X", 0, 48, 120, 3172, 9, 10, 0, 0, ";", "#X", 16, 69, 116, 715, 5, 3, 0, 0, ";", "#X", 369, 48, 114, 3173, 12, 11, 0, 0, ";", "#X", 121, 36, 120, 112, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 369, 10, 13, 0, 0, ";", "#X", 225, 67, 123, 2096, 5, 3, 0, 0, ";", "#X", 32, 36, 113, 361, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 1397, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1317, 10, 13, 0, 0, ";", "#X", 514, 36, 114, 144, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 160, 10, 13, 0, 0, ";", "#X", 257, 36, 118, 337, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 337, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1397, 10, 13, 0, 0, ";", "#X", 514, 36, 104, 112, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 554, 10, 13, 0, 0, ";", "#X", 257, 36, 112, 418, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1349, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1293, 10, 13, 0, 0, ";", "#X", 514, 36, 121, 257, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 153, 10, 13, 0, 0, ";", "#X", 257, 31, 123, 305, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 386, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1333, 10, 13, 0, 0, ";", "#X", 8, 55, 123, 2932, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 3004, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 2715, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 2972, 1, 4, 0, 0, ";", "#X", 0, 74, 123, 2940, 1, 4, 0, 0, ";", "#X", 0, 43, 122, 2924, 9, 10, 0, 0, ";", "#X", 0, 46, 120, 7711, 9, 10, 0, 0, ";", "#X", 386, 43, 117, 2923, 12, 11, 0, 0, ";", "#X", 0, 46, 114, 7710, 12, 11, 0, 0, ";", "#X", 120, 70, 122, 418, 5, 3, 0, 0, ";", "#X", 0, 31, 92, 137, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 546, 10, 13, 0, 0, ";", "#X", 257, 31, 122, 313, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 1366, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1325, 10, 13, 0, 0, ";", "#X", 289, 70, 123, 426, 5, 3, 0, 0, ";", "#X", 225, 31, 115, 161, 2, 5, 0, 0, ";", "#X", 0, 35, 120, 161, 10, 13, 0, 0, ";", "#X", 257, 31, 118, 313, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 329, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1366, 10, 13, 0, 0, ";", "#X", 72, 70, 123, 346, 5, 3, 0, 0, ";", "#X", 442, 31, 114, 145, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 570, 10, 13, 0, 0, ";", "#X", 48, 70, 119, 370, 5, 3, 0, 0, ";", "#X", 209, 31, 120, 209, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1342, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1326, 10, 13, 0, 0, ";", "#X", 257, 34, 119, 193, 2, 5, 0, 0, ";", "#X", 48, 70, 122, 539, 5, 3, 0, 0, ";", "#X", 209, 35, 106, 193, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 161, 10, 13, 0, 0, ";", "#X", 257, 36, 120, 346, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 346, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1342, 10, 13, 0, 0, ";", "#X", 8, 60, 123, 3045, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 2924, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 2836, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 2948, 1, 4, 0, 0, ";", "#X", 0, 76, 123, 2908, 1, 4, 0, 0, ";", "#X", 0, 43, 120, 3004, 9, 10, 0, 0, ";", "#X", 0, 48, 118, 3109, 9, 10, 0, 0, ";", "#X", 49, 69, 120, 755, 5, 3, 0, 0, ";", "#X", 337, 43, 114, 3004, 12, 11, 0, 0, ";", "#X", 0, 48, 112, 3108, 12, 11, 0, 0, ";", "#X", 120, 36, 112, 137, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 530, 10, 13, 0, 0, ";", "#X", 257, 36, 118, 330, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 1374, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1302, 10, 13, 0, 0, ";", "#X", 49, 67, 123, 1365, 5, 3, 0, 0, ";", "#X", 465, 36, 115, 137, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 161, 10, 13, 0, 0, ";", "#X", 257, 36, 116, 322, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 314, 10, 13, 0, 0, ";", "#X", 0, 46, 121, 1454, 10, 13, 0, 0, ";", "#X", 515, 36, 114, 192, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 377, 10, 13, 0, 0, ";", "#X", 257, 36, 118, 265, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 1405, 10, 13, 0, 0, ";", "#X", 0, 46, 121, 2112, 10, 13, 0, 0, ";", "#X", 514, 36, 113, 225, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 160, 10, 13, 0, 0, ";", "#X", 225, 65, 123, 457, 5, 3, 0, 0, ";", "#X", 32, 31, 125, 1542, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 457, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 2803, 10, 13, 0, 0, ";", "#X", 8, 55, 121, 1494, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 1518, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 1100, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 1413, 1, 4, 0, 0, ";", "#X", 0, 74, 123, 1445, 1, 4, 0, 0, ";", "#X", 0, 43, 118, 1454, 9, 10, 0, 0, ";", "#X", 0, 46, 121, 4634, 9, 10, 0, 0, ";", "#X", 385, 43, 112, 1454, 12, 11, 0, 0, ";", "#X", 0, 46, 115, 4635, 12, 11, 0, 0, ";", "#X", 121, 65, 120, 305, 5, 3, 0, 0, ";", "#X", 0, 35, 123, 337, 10, 13, 0, 0, ";", "#X", 257, 40, 123, 1421, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 2008, 10, 13, 0, 0, ";", "#X", 273, 65, 122, 160, 5, 3, 0, 0, ";", "#X", 241, 35, 124, 763, 10, 13, 0, 0, ";", "#X", 32, 65, 122, 161, 5, 3, 0, 0, ";", "#X", 80, 64, 81, 16, 5, 3, 0, 0, ";", "#X", 145, 36, 123, 1542, 2, 5, 0, 0, ";", "#X", 0, 49, 123, 2843, 10, 13, 0, 0, ";", "#X", 8, 60, 123, 1542, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 1438, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 1301, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 1478, 1, 4, 0, 0, ";", "#X", 0, 76, 122, 1381, 1, 4, 0, 0, ";", "#X", 0, 43, 122, 1405, 9, 10, 0, 0, ";", "#X", 0, 48, 118, 1582, 9, 10, 0, 0, ";", "#X", 32, 67, 122, 1558, 5, 3, 0, 0, ";", "#X", 353, 43, 117, 1406, 12, 11, 0, 0, ";", "#X", 0, 48, 112, 1583, 12, 11, 0, 0, ";", "#X", 121, 35, 123, 626, 10, 13, 0, 0, ";", "#X", 257, 40, 123, 1462, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 2008, 10, 13, 0, 0, ";", "#X", 514, 35, 121, 161, 10, 13, 0, 0, ";", "#X", 257, 31, 125, 1542, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 466, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 2329, 10, 13, 0, 0, ";", "#X", 8, 55, 123, 1462, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 1454, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 1205, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 1422, 1, 4, 0, 0, ";", "#X", 0, 74, 123, 1398, 1, 4, 0, 0, ";", "#X", 0, 43, 119, 3076, 9, 10, 0, 0, ";", "#X", 0, 46, 121, 4610, 9, 10, 0, 0, ";", "#X", 56, 65, 118, 386, 5, 3, 0, 0, ";", "#X", 330, 43, 113, 3076, 12, 11, 0, 0, ";", "#X", 0, 46, 115, 4610, 12, 11, 0, 0, ";", "#X", 120, 35, 124, 257, 10, 13, 0, 0, ";", "#X", 48, 65, 119, 217, 5, 3, 0, 0, ";", "#X", 209, 40, 124, 386, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1759, 10, 13, 0, 0, ";", "#X", 161, 65, 122, 176, 5, 3, 0, 0, ";", "#X", 281, 65, 122, 313, 5, 3, 0, 0, ";", "#X", 329, 36, 121, 1028, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 257, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 1269, 10, 13, 0, 0, ";", "#X", 8, 60, 123, 1526, 1, 4, 0, 0, ";", "#X", 0, 64, 123, 1229, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 1334, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 1438, 1, 4, 0, 0, ";", "#X", 0, 76, 121, 1309, 1, 4, 0, 0, ";", "#X", 0, 48, 116, 1583, 9, 10, 0, 0, ";", "#X", 113, 67, 123, 554, 5, 3, 0, 0, ";", "#X", 273, 48, 109, 1582, 12, 11, 0, 0, ";", "#X", 120, 35, 123, 177, 10, 13, 0, 0, ";", "#X", 105, 65, 123, 449, 5, 3, 0, 0, ";", "#X", 152, 40, 124, 386, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1020, 10, 13, 0, 0, ";", "#X", 257, 35, 124, 257, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 5141, 10, 13, 0, 0, ";", "#X", 73, 64, 123, 409, 5, 3, 0, 0, ";", "#X", 56, 31, 118, 225, 2, 5, 0, 0, ";", "#X", 128, 40, 123, 828, 10, 13, 0, 0, ";", "#X", 0, 46, 123, 1695, 10, 13, 0, 0, ";", "#X", 257, 41, 124, 498, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 386, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 9711, 10, 13, 0, 0, ";", "#X", 8, 65, 123, 498, 1, 4, 0, 0, ";", "#X", 0, 77, 123, 498, 1, 4, 0, 0, ";", "#X", 0, 53, 121, 498, 9, 10, 0, 0, ";", "#X", 32, 65, 122, 531, 5, 3, 0, 0, ";", "#X", 354, 53, 115, 498, 12, 11, 0, 0, ";", "#X", 120, 33, 124, 506, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 739, 10, 13, 0, 0, ";", "#X", 8, 57, 123, 498, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 498, 1, 4, 0, 0, ";", "#X", 0, 45, 121, 498, 9, 10, 0, 0, ";", "#X", 49, 62, 120, 265, 5, 3, 0, 0, ";", "#X", 184, 60, 119, 2547, 5, 3, 0, 0, ";", "#X", 16, 40, 123, 1302, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1318, 10, 13, 0, 0, ";", "#X", 137, 45, 116, 498, 12, 11, 0, 0, ";", "#X", 120, 34, 123, 466, 2, 5, 0, 0, ";", "#X", 8, 58, 122, 498, 1, 4, 0, 0, ";", "#X", 0, 70, 122, 498, 1, 4, 0, 0, ";", "#X", 0, 46, 120, 3559, 9, 10, 0, 0, ";", "#X", 386, 46, 114, 3558, 12, 11, 0, 0, ";", "#X", 121, 35, 125, 473, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 297, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1333, 10, 13, 0, 0, ";", "#X", 8, 59, 123, 578, 1, 4, 0, 0, ";", "#X", 0, 71, 123, 578, 1, 4, 0, 0, ";", "#X", 0, 47, 122, 578, 9, 10, 0, 0, ";", "#X", 385, 47, 117, 578, 12, 11, 0, 0, ";", "#X", 121, 36, 122, 281, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 795, 10, 13, 0, 0, ";", "#X", 8, 60, 120, 321, 1, 4, 0, 0, ";", "#X", 0, 72, 120, 321, 1, 4, 0, 0, ";", "#X", 0, 48, 117, 321, 9, 10, 0, 0, ";", "#X", 249, 38, 119, 241, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 1317, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1333, 10, 13, 0, 0, ";", "#X", 8, 62, 121, 265, 1, 4, 0, 0, ";", "#X", 0, 74, 121, 265, 1, 4, 0, 0, ";", "#X", 0, 50, 118, 265, 9, 10, 0, 0, ";", "#X", 128, 48, 110, 321, 12, 11, 0, 0, ";", "#X", 121, 40, 120, 305, 2, 5, 0, 0, ";", "#X", 8, 64, 122, 345, 1, 4, 0, 0, ";", "#X", 0, 76, 122, 345, 1, 4, 0, 0, ";", "#X", 0, 52, 120, 345, 9, 10, 0, 0, ";", "#X", 128, 50, 112, 265, 12, 11, 0, 0, ";", "#X", 121, 41, 123, 152, 2, 5, 0, 0, ";", "#X", 8, 65, 123, 184, 1, 4, 0, 0, ";", "#X", 0, 77, 123, 184, 1, 4, 0, 0, ";", "#X", 0, 53, 121, 184, 9, 10, 0, 0, ";", "#X", 128, 52, 114, 346, 12, 11, 0, 0, ";", "#X", 121, 41, 125, 554, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 321, 10, 13, 0, 0, ";", "#X", 0, 46, 123, 1357, 10, 13, 0, 0, ";", "#X", 8, 65, 123, 498, 1, 4, 0, 0, ";", "#X", 0, 77, 123, 498, 1, 4, 0, 0, ";", "#X", 0, 53, 121, 498, 9, 10, 0, 0, ";", "#X", 128, 53, 115, 185, 12, 11, 0, 0, ";", "#X", 16, 59, 109, 113, 5, 3, 0, 0, ";", "#X", 97, 57, 110, 64, 5, 3, 0, 0, ";", "#X", 88, 55, 104, 48, 5, 3, 0, 0, ";", "#X", 56, 53, 115, 498, 12, 11, 0, 0, ";", "#X", 121, 33, 125, 570, 2, 5, 0, 0, ";", "#X", 0, 35, 120, 715, 10, 13, 0, 0, ";", "#X", 8, 57, 123, 538, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 538, 1, 4, 0, 0, ";", "#X", 0, 45, 121, 538, 9, 10, 0, 0, ";", "#X", 249, 40, 123, 1357, 10, 13, 0, 0, ";", "#X", 0, 46, 123, 1317, 10, 13, 0, 0, ";", "#X", 136, 45, 116, 538, 12, 11, 0, 0, ";", "#X", 129, 58, 122, 474, 1, 4, 0, 0, ";", "#X", 0, 70, 122, 474, 1, 4, 0, 0, ";", "#X", 0, 46, 120, 3574, 9, 10, 0, 0, ";", "#X", 56, 34, 123, 450, 2, 5, 0, 0, ";", "#X", 329, 46, 114, 3575, 12, 11, 0, 0, ";", "#X", 121, 35, 123, 281, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 225, 10, 13, 0, 0, ";", "#X", 0, 46, 123, 1333, 10, 13, 0, 0, ";", "#X", 8, 59, 122, 281, 1, 4, 0, 0, ";", "#X", 0, 71, 122, 281, 1, 4, 0, 0, ";", "#X", 0, 47, 120, 281, 9, 10, 0, 0, ";", "#X", 249, 36, 119, 217, 2, 5, 0, 0, ";", "#X", 8, 60, 120, 217, 1, 4, 0, 0, ";", "#X", 0, 72, 120, 217, 1, 4, 0, 0, ";", "#X", 0, 48, 117, 217, 9, 10, 0, 0, ";", "#X", 128, 47, 114, 282, 12, 11, 0, 0, ";", "#X", 121, 38, 124, 321, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 707, 10, 13, 0, 0, ";", "#X", 8, 62, 123, 273, 1, 4, 0, 0, ";", "#X", 0, 74, 123, 273, 1, 4, 0, 0, ";", "#X", 0, 50, 122, 273, 9, 10, 0, 0, ";", "#X", 128, 48, 110, 217, 12, 11, 0, 0, ";", "#X", 121, 36, 124, 723, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 1317, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1325, 10, 13, 0, 0, ";", "#X", 8, 60, 123, 715, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 715, 1, 4, 0, 0, ";", "#X", 0, 48, 122, 715, 9, 10, 0, 0, ";", "#X", 128, 50, 117, 274, 12, 11, 0, 0, ";", "#X", 257, 48, 117, 715, 12, 11, 0, 0, ";", "#X", 378, 41, 125, 546, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 225, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1333, 10, 13, 0, 0, ";", "#X", 8, 65, 123, 546, 1, 4, 0, 0, ";", "#X", 0, 77, 123, 546, 1, 4, 0, 0, ";", "#X", 0, 53, 122, 546, 9, 10, 0, 0, ";", "#X", 386, 53, 117, 546, 12, 11, 0, 0, ";", "#X", 120, 33, 125, 570, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 683, 10, 13, 0, 0, ";", "#X", 8, 57, 123, 530, 1, 4, 0, 0, ";", "#X", 0, 69, 123, 530, 1, 4, 0, 0, ";", "#X", 0, 45, 122, 530, 9, 10, 0, 0, ";", "#X", 249, 40, 123, 1390, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1349, 10, 13, 0, 0, ";", "#X", 137, 45, 117, 530, 12, 11, 0, 0, ";", "#X", 120, 34, 120, 466, 2, 5, 0, 0, ";", "#X", 8, 58, 123, 490, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 490, 1, 4, 0, 0, ";", "#X", 0, 46, 121, 11566, 9, 10, 0, 0, ";", "#X", 386, 46, 115, 11566, 12, 11, 0, 0, ";", "#X", 120, 35, 125, 498, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 241, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1398, 10, 13, 0, 0, ";", "#X", 8, 59, 123, 538, 1, 4, 0, 0, ";", "#X", 0, 71, 123, 538, 1, 4, 0, 0, ";", "#X", 0, 47, 121, 538, 9, 10, 0, 0, ";", "#X", 386, 47, 115, 538, 12, 11, 0, 0, ";", "#X", 120, 36, 124, 281, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 707, 10, 13, 0, 0, ";", "#X", 8, 60, 119, 265, 1, 4, 0, 0, ";", "#X", 0, 72, 119, 265, 1, 4, 0, 0, ";", "#X", 0, 48, 116, 265, 9, 10, 0, 0, ";", "#X", 249, 38, 119, 225, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 1309, 10, 13, 0, 0, ";", "#X", 0, 46, 123, 2089, 10, 13, 0, 0, ";", "#X", 8, 62, 120, 225, 1, 4, 0, 0, ";", "#X", 0, 74, 120, 225, 1, 4, 0, 0, ";", "#X", 0, 50, 117, 225, 9, 10, 0, 0, ";", "#X", 129, 48, 109, 265, 12, 11, 0, 0, ";", "#X", 120, 40, 114, 225, 2, 5, 0, 0, ";", "#X", 8, 64, 121, 394, 1, 4, 0, 0, ";", "#X", 0, 76, 121, 394, 1, 4, 0, 0, ";", "#X", 0, 52, 118, 394, 9, 10, 0, 0, ";", "#X", 129, 50, 110, 225, 12, 11, 0, 0, ";", "#X", 120, 41, 121, 137, 2, 5, 0, 0, ";", "#X", 8, 65, 121, 177, 1, 4, 0, 0, ";", "#X", 0, 77, 121, 177, 1, 4, 0, 0, ";", "#X", 0, 53, 118, 177, 9, 10, 0, 0, ";", "#X", 129, 52, 112, 393, 12, 11, 0, 0, ";", "#X", 120, 43, 125, 482, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 273, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 3928, 10, 13, 0, 0, ";", "#X", 8, 67, 123, 498, 1, 4, 0, 0, ";", "#X", 0, 79, 123, 498, 1, 4, 0, 0, ";", "#X", 0, 55, 121, 498, 9, 10, 0, 0, ";", "#X", 129, 53, 112, 177, 12, 11, 0, 0, ";", "#X", 257, 55, 116, 498, 12, 11, 0, 0, ";", "#X", 120, 35, 124, 683, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 659, 10, 13, 0, 0, ";", "#X", 8, 59, 123, 651, 1, 4, 0, 0, ";", "#X", 0, 71, 123, 651, 1, 4, 0, 0, ";", "#X", 0, 47, 121, 651, 9, 10, 0, 0, ";", "#X", 249, 40, 123, 1374, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1366, 10, 13, 0, 0, ";", "#X", 137, 47, 116, 651, 12, 11, 0, 0, ";", "#X", 120, 36, 123, 434, 2, 5, 0, 0, ";", "#X", 8, 60, 122, 498, 1, 4, 0, 0, ";", "#X", 0, 72, 122, 498, 1, 4, 0, 0, ";", "#X", 0, 48, 119, 498, 9, 10, 0, 0, ";", "#X", 386, 48, 113, 498, 12, 11, 0, 0, ";", "#X", 121, 38, 123, 433, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 289, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1566, 10, 13, 0, 0, ";", "#X", 8, 62, 122, 457, 1, 4, 0, 0, ";", "#X", 0, 74, 122, 457, 1, 4, 0, 0, ";", "#X", 0, 50, 120, 457, 9, 10, 0, 0, ";", "#X", 385, 50, 114, 458, 12, 11, 0, 0, ";", "#X", 121, 39, 123, 313, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 273, 10, 13, 0, 0, ";", "#X", 8, 63, 120, 241, 1, 4, 0, 0, ";", "#X", 0, 75, 120, 241, 1, 4, 0, 0, ";", "#X", 0, 51, 117, 241, 9, 10, 0, 0, ";", "#X", 249, 40, 120, 241, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 297, 10, 13, 0, 0, ";", "#X", 0, 46, 123, 6024, 10, 13, 0, 0, ";", "#X", 8, 64, 123, 257, 1, 4, 0, 0, ";", "#X", 0, 76, 123, 257, 1, 4, 0, 0, ";", "#X", 0, 52, 121, 257, 9, 10, 0, 0, ";", "#X", 128, 51, 110, 241, 12, 11, 0, 0, ";", "#X", 121, 41, 125, 297, 2, 5, 0, 0, ";", "#X", 0, 43, 121, 305, 10, 13, 0, 0, ";", "#X", 8, 65, 119, 184, 1, 4, 0, 0, ";", "#X", 0, 77, 119, 184, 1, 4, 0, 0, ";", "#X", 0, 53, 116, 184, 9, 10, 0, 0, ";", "#X", 128, 52, 115, 257, 12, 11, 0, 0, ";", "#X", 121, 43, 120, 233, 2, 5, 0, 0, ";", "#X", 0, 45, 122, 249, 10, 13, 0, 0, ";", "#X", 8, 67, 122, 241, 1, 4, 0, 0, ";", "#X", 0, 79, 122, 241, 1, 4, 0, 0, ";", "#X", 0, 55, 120, 241, 9, 10, 0, 0, ";", "#X", 128, 53, 109, 185, 12, 11, 0, 0, ";", "#X", 121, 66, 122, 257, 5, 3, 0, 0, ";", "#X", 0, 42, 125, 265, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 988, 10, 13, 0, 0, ";", "#X", 0, 49, 122, 2313, 10, 13, 0, 0, ";", "#X", 8, 66, 122, 337, 1, 4, 0, 0, ";", "#X", 0, 78, 122, 337, 1, 4, 0, 0, ";", "#X", 0, 54, 120, 337, 9, 10, 0, 0, ";", "#X", 128, 55, 114, 241, 12, 11, 0, 0, ";", "#X", 121, 44, 125, 297, 2, 5, 0, 0, ";", "#X", 8, 68, 122, 265, 1, 4, 0, 0, ";", "#X", 0, 80, 122, 265, 1, 4, 0, 0, ";", "#X", 0, 56, 119, 265, 9, 10, 0, 0, ";", "#X", 128, 54, 114, 338, 12, 11, 0, 0, ";", "#X", 121, 46, 125, 1012, 2, 5, 0, 0, ";", "#X", 8, 70, 123, 217, 1, 4, 0, 0, ";", "#X", 0, 82, 123, 217, 1, 4, 0, 0, ";", "#X", 0, 58, 121, 217, 9, 10, 0, 0, ";", "#X", 128, 56, 113, 265, 12, 11, 0, 0, ";", "#X", 121, 40, 124, 249, 10, 13, 0, 0, ";", "#X", 136, 58, 115, 217, 12, 11, 0, 0, ";", "#X", 121, 44, 125, 241, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 217, 10, 13, 0, 0, ";", "#X", 8, 68, 122, 273, 1, 4, 0, 0, ";", "#X", 0, 80, 122, 273, 1, 4, 0, 0, ";", "#X", 0, 56, 120, 273, 9, 10, 0, 0, ";", "#X", 249, 46, 125, 1261, 2, 5, 0, 0, ";", "#X", 0, 43, 121, 361, 10, 13, 0, 0, ";", "#X", 8, 70, 121, 281, 1, 4, 0, 0, ";", "#X", 0, 82, 121, 281, 1, 4, 0, 0, ";", "#X", 0, 58, 118, 281, 9, 10, 0, 0, ";", "#X", 128, 56, 114, 273, 12, 11, 0, 0, ";", "#X", 121, 48, 123, 305, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 562, 10, 13, 0, 0, ";", "#X", 0, 49, 121, 4241, 10, 13, 0, 0, ";", "#X", 8, 72, 123, 305, 1, 4, 0, 0, ";", "#X", 0, 84, 123, 305, 1, 4, 0, 0, ";", "#X", 0, 60, 121, 305, 9, 10, 0, 0, ";", "#X", 128, 58, 112, 282, 12, 11, 0, 0, ";", "#X", 257, 60, 116, 306, 12, 11, 0, 0, ";", "#X", 378, 46, 125, 59245, 2, 5, 0, 0, ";", "#X", 0, 40, 122, 225, 10, 13, 0, 0, ";", "#X", 8, 70, 122, 233, 1, 4, 0, 0, ";", "#X", 0, 82, 122, 233, 1, 4, 0, 0, ";", "#X", 0, 58, 120, 233, 9, 10, 0, 0, ";", "#X", 249, 48, 121, 281, 2, 5, 0, 0, ";", "#X", 0, 43, 121, 265, 10, 13, 0, 0, ";", "#X", 8, 72, 122, 329, 1, 4, 0, 0, ";", "#X", 0, 84, 122, 329, 1, 4, 0, 0, ";", "#X", 0, 60, 119, 329, 9, 10, 0, 0, ";", "#X", 129, 58, 114, 232, 12, 11, 0, 0, ";", "#X", 120, 50, 125, 137, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 129, 10, 13, 0, 0, ";", "#X", 0, 57, 122, 161, 10, 13, 0, 0, ";", "#X", 8, 74, 121, 153, 1, 4, 0, 0, ";", "#X", 0, 86, 121, 153, 1, 4, 0, 0, ";", "#X", 0, 62, 118, 153, 9, 10, 0, 0, ";", "#X", 129, 60, 113, 329, 12, 11, 0, 0, ";", "#X", 120, 35, 125, 3036, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 2522, 10, 13, 0, 0, ";", "#X", 0, 49, 122, 11253, 10, 13, 0, 0, ";", "#X", 8, 47, 123, 2394, 1, 4, 0, 0, ";", "#X", 0, 59, 123, 2418, 1, 4, 0, 0, ";", "#X", 0, 66, 123, 2353, 1, 4, 0, 0, ";", "#X", 0, 71, 123, 2217, 1, 4, 0, 0, ";", "#X", 0, 75, 123, 2177, 1, 4, 0, 0, ";", "#X", 0, 78, 123, 2249, 1, 4, 0, 0, ";", "#X", 0, 47, 121, 129, 9, 10, 0, 0, ";", "#X", 129, 49, 116, 385, 9, 10, 0, 0, ";", "#X", 0, 62, 112, 152, 12, 11, 0, 0, ";", "#X", 128, 51, 116, 129, 9, 10, 0, 0, ";", "#X", 129, 49, 117, 0, 9, 10, 0, 0, ";", "#X", 0, 47, 115, 128, 12, 11, 0, 0, ";", "#X", 128, 51, 117, 129, 9, 10, 0, 0, ";", "#X", 0, 49, 109, 386, 12, 11, 0, 0, ";", "#X", 129, 54, 118, 128, 9, 10, 0, 0, ";", "#X", 0, 51, 109, 128, 12, 11, 0, 0, ";", "#X", 120, 46, 122, 2482, 10, 13, 0, 0, ";", "#X", 8, 51, 118, 129, 9, 10, 0, 0, ";", "#X", 0, 49, 110, 0, 12, 11, 0, 0, ";", "#X", 129, 54, 118, 128, 9, 10, 0, 0, ";", "#X", 0, 51, 111, 128, 12, 11, 0, 0, ";", "#X", 128, 52, 121, 129, 9, 10, 0, 0, ";", "#X", 0, 54, 112, 129, 12, 11, 0, 0, ";", "#X", 129, 54, 118, 128, 9, 10, 0, 0, ";", "#X", 0, 51, 112, 128, 12, 11, 0, 0, ";", "#X", 128, 54, 119, 129, 9, 10, 0, 0, ";", "#X", 0, 54, 112, 129, 12, 11, 0, 0, ";", "#X", 129, 56, 121, 192, 9, 10, 0, 0, ";", "#X", 0, 52, 115, 128, 12, 11, 0, 0, ";", "#X", 128, 58, 120, 129, 9, 10, 0, 0, ";", "#X", 0, 54, 112, 129, 12, 11, 0, 0, ";", "#X", 129, 58, 119, 128, 9, 10, 0, 0, ";", "#X", 0, 54, 113, 128, 12, 11, 0, 0, ";", "#X", 128, 56, 119, 169, 9, 10, 0, 0, ";", "#X", 0, 56, 115, 193, 12, 11, 0, 0, ";", "#X", 129, 54, 119, 128, 9, 10, 0, 0, ";", "#X", 0, 58, 114, 128, 12, 11, 0, 0, ";", "#X", 128, 53, 119, 129, 9, 10, 0, 0, ";", "#X", 0, 58, 113, 129, 12, 11, 0, 0, ";", "#X", 129, 56, 119, 185, 9, 10, 0, 0, ";", "#X", 0, 56, 113, 168, 12, 11, 0, 0, ";", "#X", 120, 46, 123, 2836, 10, 13, 0, 0, ";", "#X", 8, 58, 120, 129, 9, 10, 0, 0, ";", "#X", 0, 54, 113, 129, 12, 11, 0, 0, ";", "#X", 129, 59, 121, 144, 9, 10, 0, 0, ";", "#X", 0, 53, 113, 128, 12, 11, 0, 0, ";", "#X", 128, 61, 121, 153, 9, 10, 0, 0, ";", "#X", 0, 56, 113, 185, 12, 11, 0, 0, ";", "#X", 129, 62, 120, 128, 9, 10, 0, 0, ";", "#X", 0, 58, 114, 128, 12, 11, 0, 0, ";", "#X", 128, 63, 118, 257, 9, 10, 0, 0, ";", "#X", 0, 59, 115, 145, 12, 11, 0, 0, ";", "#X", 129, 61, 115, 152, 12, 11, 0, 0, ";", "#X", 120, 32, 125, 3037, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 2659, 10, 13, 0, 0, ";", "#X", 0, 43, 123, 3020, 10, 13, 0, 0, ";", "#X", 8, 44, 123, 2458, 1, 4, 0, 0, ";", "#X", 0, 56, 123, 2450, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 2201, 1, 4, 0, 0, ";", "#X", 0, 68, 123, 2225, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 2177, 1, 4, 0, 0, ";", "#X", 0, 75, 123, 2346, 1, 4, 0, 0, ";", "#X", 0, 44, 120, 129, 9, 10, 0, 0, ";", "#X", 0, 62, 114, 129, 12, 11, 0, 0, ";", "#X", 129, 46, 124, 385, 9, 10, 0, 0, ";", "#X", 0, 63, 112, 257, 12, 11, 0, 0, ";", "#X", 128, 48, 125, 129, 9, 10, 0, 0, ";", "#X", 129, 46, 125, 385, 9, 10, 0, 0, ";", "#X", 0, 44, 114, 128, 12, 11, 0, 0, ";", "#X", 128, 44, 125, 129, 9, 10, 0, 0, ";", "#X", 0, 46, 119, 386, 12, 11, 0, 0, ";", "#X", 129, 46, 125, 2594, 9, 10, 0, 0, ";", "#X", 0, 48, 120, 128, 12, 11, 0, 0, ";", "#X", 120, 46, 122, 2298, 10, 13, 0, 0, ";", "#X", 8, 48, 125, 129, 9, 10, 0, 0, ";", "#X", 0, 46, 120, 386, 12, 11, 0, 0, ";", "#X", 129, 50, 125, 129, 9, 10, 0, 0, ";", "#X", 0, 44, 120, 129, 12, 11, 0, 0, ";", "#X", 129, 51, 125, 128, 9, 10, 0, 0, ";", "#X", 0, 46, 120, 2594, 12, 11, 0, 0, ";", "#X", 128, 53, 125, 129, 9, 10, 0, 0, ";", "#X", 0, 48, 120, 129, 12, 11, 0, 0, ";", "#X", 129, 56, 125, 128, 9, 10, 0, 0, ";", "#X", 0, 50, 120, 128, 12, 11, 0, 0, ";", "#X", 128, 55, 125, 129, 9, 10, 0, 0, ";", "#X", 0, 51, 120, 129, 12, 11, 0, 0, ";", "#X", 129, 56, 125, 128, 9, 10, 0, 0, ";", "#X", 0, 53, 120, 128, 12, 11, 0, 0, ";", "#X", 128, 58, 125, 129, 9, 10, 0, 0, ";", "#X", 0, 56, 120, 129, 12, 11, 0, 0, ";", "#X", 129, 60, 125, 128, 9, 10, 0, 0, ";", "#X", 0, 55, 120, 128, 12, 11, 0, 0, ";", "#X", 128, 62, 125, 129, 9, 10, 0, 0, ";", "#X", 0, 56, 120, 129, 12, 11, 0, 0, ";", "#X", 129, 63, 125, 128, 9, 10, 0, 0, ";", "#X", 0, 58, 120, 128, 12, 11, 0, 0, ";", "#X", 128, 60, 122, 129, 9, 10, 0, 0, ";", "#X", 0, 60, 120, 129, 12, 11, 0, 0, ";", "#X", 121, 46, 122, 13606, 10, 13, 0, 0, ";", "#X", 8, 63, 125, 771, 9, 10, 0, 0, ";", "#X", 0, 62, 120, 128, 12, 11, 0, 0, ";", "#X", 128, 63, 120, 129, 12, 11, 0, 0, ";", "#X", 129, 60, 116, 128, 12, 11, 0, 0, ";", "#X", 128, 63, 120, 771, 12, 11, 0, 0, ";", "#X", 378, 34, 125, 5831, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 6104, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 15221, 10, 13, 0, 0, ";", "#X", 8, 46, 123, 8482, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 7711, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 7711, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 7711, 1, 4, 0, 0, ";", "#X", 0, 74, 123, 7711, 1, 4, 0, 0, ";", "#X", 0, 77, 123, 7711, 1, 4, 0, 0, ";", "#X", 0, 46, 118, 0, 9, 10, 0, 0, ";", "#X", 128, 48, 119, 129, 9, 10, 0, 0, ";", "#X", 129, 50, 119, 176, 9, 10, 0, 0, ";", "#X", 128, 48, 119, 193, 9, 10, 0, 0, ";", "#X", 0, 46, 112, 0, 12, 11, 0, 0, ";", "#X", 129, 50, 119, 144, 9, 10, 0, 0, ";", "#X", 0, 48, 112, 128, 12, 11, 0, 0, ";", "#X", 128, 51, 119, 129, 9, 10, 0, 0, ";", "#X", 0, 50, 112, 177, 12, 11, 0, 0, ";", "#X", 129, 50, 119, 128, 9, 10, 0, 0, ";", "#X", 0, 48, 113, 193, 12, 11, 0, 0, ";", "#X", 128, 51, 119, 129, 9, 10, 0, 0, ";", "#X", 0, 50, 113, 145, 12, 11, 0, 0, ";", "#X", 129, 53, 120, 128, 9, 10, 0, 0, ";", "#X", 0, 51, 113, 128, 12, 11, 0, 0, ";", "#X", 128, 52, 120, 129, 9, 10, 0, 0, ";", "#X", 0, 50, 113, 129, 12, 11, 0, 0, ";", "#X", 129, 53, 120, 152, 9, 10, 0, 0, ";", "#X", 0, 51, 113, 128, 12, 11, 0, 0, ";", "#X", 128, 55, 120, 129, 9, 10, 0, 0, ";", "#X", 0, 53, 114, 129, 12, 11, 0, 0, ";", "#X", 129, 53, 120, 128, 9, 10, 0, 0, ";", "#X", 0, 52, 114, 128, 12, 11, 0, 0, ";", "#X", 128, 56, 121, 161, 9, 10, 0, 0, ";", "#X", 0, 53, 114, 153, 12, 11, 0, 0, ";", "#X", 129, 55, 121, 136, 9, 10, 0, 0, ";", "#X", 0, 55, 114, 128, 12, 11, 0, 0, ";", "#X", 128, 53, 121, 137, 9, 10, 0, 0, ";", "#X", 0, 53, 114, 129, 12, 11, 0, 0, ";", "#X", 129, 55, 121, 120, 9, 10, 0, 0, ";", "#X", 0, 56, 115, 161, 12, 11, 0, 0, ";", "#X", 128, 56, 121, 161, 9, 10, 0, 0, ";", "#X", 0, 55, 115, 137, 12, 11, 0, 0, ";", "#X", 129, 58, 121, 80, 9, 10, 0, 0, ";", "#X", 0, 53, 115, 137, 12, 11, 0, 0, ";", "#X", 128, 60, 121, 105, 9, 10, 0, 0, ";", "#X", 0, 55, 115, 121, 12, 11, 0, 0, ";", "#X", 129, 62, 122, 137, 9, 10, 0, 0, ";", "#X", 0, 56, 115, 161, 12, 11, 0, 0, ";", "#X", 129, 63, 122, 136, 9, 10, 0, 0, ";", "#X", 0, 58, 115, 80, 12, 11, 0, 0, ";", "#X", 128, 62, 122, 88, 9, 10, 0, 0, ";", "#X", 0, 60, 116, 104, 12, 11, 0, 0, ";", "#X", 129, 60, 122, 128, 9, 10, 0, 0, ";", "#X", 0, 62, 116, 136, 12, 11, 0, 0, ";", "#X", 128, 62, 122, 129, 9, 10, 0, 0, ";", "#X", 0, 63, 116, 137, 12, 11, 0, 0, ";", "#X", 129, 63, 122, 120, 9, 10, 0, 0, ";", "#X", 0, 62, 116, 88, 12, 11, 0, 0, ";", "#X", 128, 65, 122, 113, 9, 10, 0, 0, ";", "#X", 0, 60, 116, 129, 12, 11, 0, 0, ";", "#X", 129, 67, 123, 152, 9, 10, 0, 0, ";", "#X", 0, 62, 117, 128, 12, 11, 0, 0, ";", "#X", 128, 68, 123, 145, 9, 10, 0, 0, ";", "#X", 0, 63, 117, 121, 12, 11, 0, 0, ";", "#X", 129, 70, 123, 168, 9, 10, 0, 0, ";", "#X", 0, 65, 117, 112, 12, 11, 0, 0, ";", "#X", 128, 68, 123, 97, 9, 10, 0, 0, ";", "#X", 0, 67, 117, 153, 12, 11, 0, 0, ";", "#X", 129, 65, 123, 112, 9, 10, 0, 0, ";", "#X", 0, 68, 117, 144, 12, 11, 0, 0, ";", "#X", 128, 67, 123, 113, 9, 10, 0, 0, ";", "#X", 0, 70, 117, 169, 12, 11, 0, 0, ";", "#X", 129, 70, 123, 72, 9, 10, 0, 0, ";", "#X", 0, 68, 117, 96, 12, 11, 0, 0, ";", "#X", 128, 72, 124, 129, 9, 10, 0, 0, ";", "#X", 0, 65, 118, 113, 12, 11, 0, 0, ";", "#X", 129, 74, 124, 144, 9, 10, 0, 0, ";", "#X", 0, 67, 118, 112, 12, 11, 0, 0, ";", "#X", 128, 75, 124, 6161, 9, 10, 0, 0, ";", "#X", 0, 70, 118, 73, 12, 11, 0, 0, ";", "#X", 129, 72, 118, 128, 12, 11, 0, 0, ";", "#X", 128, 74, 118, 145, 12, 11, 0, 0, ";", "#X", 129, 75, 119, 6160, 12, 11, 0, 0, ";", "#X", 3084, 46, 115, 1157, 1, 4, 0, 0, ";", "#X", 0, 58, 115, 386, 1, 4, 0, 0, ";", "#X", 386, 45, 117, 385, 1, 4, 0, 0, ";", "#X", 0, 57, 117, 385, 1, 4, 0, 0, ";", "#X", 385, 46, 118, 1157, 1, 4, 0, 0, ";", "#X", 0, 58, 118, 386, 1, 4, 0, 0, ";", "#X", 386, 48, 119, 385, 1, 4, 0, 0, ";", "#X", 0, 60, 119, 385, 1, 4, 0, 0, ";", "#X", 385, 46, 120, 1157, 1, 4, 0, 0, ";", "#X", 0, 58, 120, 386, 1, 4, 0, 0, ";", "#X", 386, 50, 122, 385, 1, 4, 0, 0, ";", "#X", 0, 62, 122, 385, 1, 4, 0, 0, ";", "#X", 385, 46, 123, 1157, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 386, 1, 4, 0, 0, ";", "#X", 386, 51, 123, 385, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 385, 1, 4, 0, 0, ";", "#X", 385, 46, 123, 1157, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 386, 1, 4, 0, 0, ";", "#X", 386, 53, 123, 386, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 386, 1, 4, 0, 0, ";", "#X", 386, 46, 123, 8859, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 385, 1, 4, 0, 0, ";", "#X", 377, 39, 125, 908, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 1020, 10, 13, 0, 0, ";", "#X", 0, 52, 123, 1374, 10, 13, 0, 0, ";", "#X", 8, 51, 123, 32, 1, 4, 0, 0, ";", "#X", 0, 55, 123, 747, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 386, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 24, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 24, 1, 4, 0, 0, ";", "#X", 24, 75, 122, 876, 1, 4, 0, 0, ";", "#X", 8, 63, 123, 876, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 884, 1, 4, 0, 0, ";", "#X", 8, 51, 123, 916, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 587, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 884, 1, 4, 0, 0, ";", "#X", 153, 51, 115, 297, 5, 3, 0, 0, ";", "#X", 0, 55, 111, 305, 9, 10, 0, 0, ";", "#X", 0, 58, 115, 185, 9, 10, 0, 0, ";", "#X", 185, 46, 120, 690, 10, 13, 0, 0, ";", "#X", 8, 55, 116, 208, 5, 3, 0, 0, ";", "#X", 0, 58, 108, 120, 9, 10, 0, 0, ";", "#X", 24, 63, 110, 160, 9, 10, 0, 0, ";", "#X", 168, 58, 115, 209, 5, 3, 0, 0, ";", "#X", 0, 63, 105, 41, 9, 10, 0, 0, ";", "#X", 0, 55, 102, 306, 12, 11, 0, 0, ";", "#X", 0, 58, 108, 185, 12, 11, 0, 0, ";", "#X", 8, 67, 113, 177, 9, 10, 0, 0, ";", "#X", 177, 40, 124, 1253, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 860, 10, 13, 0, 0, ";", "#X", 8, 63, 114, 892, 5, 3, 0, 0, ";", "#X", 0, 58, 123, 169, 1, 4, 0, 0, ";", "#X", 0, 67, 112, 56, 9, 10, 0, 0, ";", "#X", 0, 58, 98, 121, 12, 11, 0, 0, ";", "#X", 16, 70, 114, 1101, 9, 10, 0, 0, ";", "#X", 8, 63, 100, 161, 12, 11, 0, 0, ";", "#X", 169, 63, 123, 193, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 201, 1, 4, 0, 0, ";", "#X", 0, 70, 121, 313, 1, 4, 0, 0, ";", "#X", 0, 75, 122, 273, 1, 4, 0, 0, ";", "#X", 0, 63, 94, 40, 12, 11, 0, 0, ";", "#X", 8, 67, 105, 177, 12, 11, 0, 0, ";", "#X", 177, 39, 125, 393, 2, 5, 0, 0, ";", "#X", 0, 35, 121, 176, 10, 13, 0, 0, ";", "#X", 0, 46, 119, 972, 10, 13, 0, 0, ";", "#X", 8, 51, 122, 353, 1, 4, 0, 0, ";", "#X", 0, 67, 104, 56, 12, 11, 0, 0, ";", "#X", 16, 70, 106, 1100, 12, 11, 0, 0, ";", "#X", 361, 38, 125, 924, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 940, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 3751, 10, 13, 0, 0, ";", "#X", 8, 50, 123, 956, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 466, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 803, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 844, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 868, 1, 4, 0, 0, ";", "#X", 0, 74, 122, 828, 1, 4, 0, 0, ";", "#X", 193, 50, 112, 257, 5, 3, 0, 0, ";", "#X", 0, 53, 111, 257, 9, 10, 0, 0, ";", "#X", 16, 58, 114, 169, 9, 10, 0, 0, ";", "#X", 169, 46, 119, 658, 10, 13, 0, 0, ";", "#X", 8, 53, 115, 249, 5, 3, 0, 0, ";", "#X", 0, 58, 110, 120, 9, 10, 0, 0, ";", "#X", 32, 62, 113, 153, 9, 10, 0, 0, ";", "#X", 161, 58, 113, 224, 5, 3, 0, 0, ";", "#X", 0, 62, 110, 48, 9, 10, 0, 0, ";", "#X", 0, 53, 102, 257, 12, 11, 0, 0, ";", "#X", 16, 65, 112, 168, 9, 10, 0, 0, ";", "#X", 0, 58, 107, 168, 12, 11, 0, 0, ";", "#X", 168, 40, 124, 1141, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 956, 10, 13, 0, 0, ";", "#X", 8, 62, 114, 884, 5, 3, 0, 0, ";", "#X", 0, 58, 122, 611, 1, 4, 0, 0, ";", "#X", 0, 65, 113, 40, 9, 10, 0, 0, ";", "#X", 0, 70, 112, 948, 9, 10, 0, 0, ";", "#X", 0, 58, 101, 121, 12, 11, 0, 0, ";", "#X", 32, 62, 105, 153, 12, 11, 0, 0, ";", "#X", 161, 62, 123, 321, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 217, 1, 4, 0, 0, ";", "#X", 0, 70, 122, 233, 1, 4, 0, 0, ";", "#X", 0, 74, 120, 217, 1, 4, 0, 0, ";", "#X", 0, 62, 101, 48, 12, 11, 0, 0, ";", "#X", 16, 65, 104, 169, 12, 11, 0, 0, ";", "#X", 169, 38, 125, 385, 2, 5, 0, 0, ";", "#X", 0, 35, 120, 144, 10, 13, 0, 0, ";", "#X", 0, 46, 120, 899, 10, 13, 0, 0, ";", "#X", 8, 50, 117, 241, 1, 4, 0, 0, ";", "#X", 0, 65, 105, 40, 12, 11, 0, 0, ";", "#X", 0, 70, 104, 948, 12, 11, 0, 0, ";", "#X", 377, 36, 125, 988, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 964, 10, 13, 0, 0, ";", "#X", 0, 57, 123, 1261, 10, 13, 0, 0, ";", "#X", 8, 48, 122, 812, 1, 4, 0, 0, ";", "#X", 0, 55, 123, 514, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 788, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 1261, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 1229, 1, 4, 0, 0, ";", "#X", 0, 72, 122, 1205, 1, 4, 0, 0, ";", "#X", 169, 60, 112, 209, 9, 10, 0, 0, ";", "#X", 24, 48, 113, 225, 5, 3, 0, 0, ";", "#X", 0, 55, 111, 305, 9, 10, 0, 0, ";", "#X", 177, 63, 109, 201, 9, 10, 0, 0, ";", "#X", 8, 46, 119, 675, 10, 13, 0, 0, ";", "#X", 8, 51, 113, 193, 5, 3, 0, 0, ";", "#X", 0, 60, 114, 72, 9, 10, 0, 0, ";", "#X", 169, 60, 104, 208, 12, 11, 0, 0, ";", "#X", 24, 55, 114, 217, 5, 3, 0, 0, ";", "#X", 0, 63, 108, 24, 9, 10, 0, 0, ";", "#X", 0, 67, 111, 184, 9, 10, 0, 0, ";", "#X", 0, 55, 102, 305, 12, 11, 0, 0, ";", "#X", 176, 63, 99, 201, 12, 11, 0, 0, ";", "#X", 8, 70, 114, 1213, 9, 10, 0, 0, ";", "#X", 0, 40, 124, 587, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 780, 10, 13, 0, 0, ";", "#X", 8, 65, 117, 1350, 9, 10, 0, 0, ";", "#X", 0, 60, 106, 73, 12, 11, 0, 0, ";", "#X", 1, 58, 113, 730, 5, 3, 0, 0, ";", "#X", 0, 55, 123, 570, 1, 4, 0, 0, ";", "#X", 192, 60, 120, 338, 1, 4, 0, 0, ";", "#X", 0, 63, 97, 24, 12, 11, 0, 0, ";", "#X", 0, 67, 102, 185, 12, 11, 0, 0, ";", "#X", 185, 36, 125, 361, 2, 5, 0, 0, ";", "#X", 0, 70, 107, 1213, 12, 11, 0, 0, ";", "#X", 0, 35, 120, 129, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 6032, 10, 13, 0, 0, ";", "#X", 8, 48, 118, 169, 1, 4, 0, 0, ";", "#X", 0, 65, 110, 1349, 12, 11, 0, 0, ";", "#X", 378, 31, 125, 730, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 530, 10, 13, 0, 0, ";", "#X", 0, 49, 122, 4297, 10, 13, 0, 0, ";", "#X", 8, 43, 123, 755, 1, 4, 0, 0, ";", "#X", 0, 55, 123, 722, 1, 4, 0, 0, ";", "#X", 0, 59, 123, 690, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 819, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 731, 1, 4, 0, 0, ";", "#X", 0, 43, 116, 771, 3, 6, 0, 0, ";", "#X", 0, 55, 115, 795, 3, 6, 0, 0, ";", "#X", 0, 67, 104, 1116, 3, 6, 0, 0, ";", "#X", 0, 71, 103, 698, 3, 6, 0, 0, ";", "#X", 0, 74, 101, 779, 3, 6, 0, 0, ";", "#X", 0, 79, 113, 1092, 3, 6, 0, 0, ";", "#X", 763, 36, 125, 425, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 329, 10, 13, 0, 0, ";", "#X", 0, 52, 123, 449, 10, 13, 0, 0, ";", "#X", 8, 48, 123, 345, 1, 4, 0, 0, ";", "#X", 0, 55, 123, 337, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 353, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 353, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 297, 1, 4, 0, 0, ";", "#X", 0, 48, 117, 313, 3, 6, 0, 0, ";", "#X", 0, 72, 116, 361, 3, 6, 0, 0, ";", "#X", 0, 75, 101, 353, 3, 6, 0, 0, ";", "#X", 763, 35, 125, 755, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 562, 10, 13, 0, 0, ";", "#X", 0, 55, 127, 674, 10, 13, 0, 0, ";", "#X", 8, 43, 123, 803, 1, 4, 0, 0, ";", "#X", 0, 55, 123, 739, 1, 4, 0, 0, ";", "#X", 0, 59, 123, 602, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 795, 1, 4, 0, 0, ";", "#X", 0, 67, 122, 747, 1, 4, 0, 0, ";", "#X", 0, 43, 116, 731, 3, 6, 0, 0, ";", "#X", 0, 55, 118, 763, 3, 6, 0, 0, ";", "#X", 0, 67, 111, 1172, 3, 6, 0, 0, ";", "#X", 0, 71, 111, 634, 3, 6, 0, 0, ";", "#X", 0, 74, 112, 755, 3, 6, 0, 0, ";", "#X", 0, 79, 115, 1020, 3, 6, 0, 0, ";", "#X", 763, 36, 125, 763, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 305, 10, 13, 0, 0, ";", "#X", 0, 57, 123, 257, 10, 13, 0, 0, ";", "#X", 8, 48, 123, 289, 1, 4, 0, 0, ";", "#X", 0, 55, 123, 313, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 337, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 377, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 409, 1, 4, 0, 0, ";", "#X", 0, 48, 119, 305, 3, 6, 0, 0, ";", "#X", 0, 72, 115, 418, 3, 6, 0, 0, ";", "#X", 0, 75, 114, 490, 3, 6, 0, 0, ";", "#X", 763, 34, 125, 707, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 458, 10, 13, 0, 0, ";", "#X", 0, 52, 123, 554, 10, 13, 0, 0, ";", "#X", 8, 62, 122, 747, 5, 3, 0, 0, ";", "#X", 0, 46, 120, 21566, 1, 4, 0, 0, ";", "#X", 0, 53, 123, 747, 1, 4, 0, 0, ";", "#X", 0, 56, 123, 683, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 602, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 739, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 723, 1, 4, 0, 0, ";", "#X", 0, 46, 110, 0, 3, 6, 0, 0, ";", "#X", 0, 58, 118, 514, 3, 6, 0, 0, ";", "#X", 0, 65, 118, 659, 3, 6, 0, 0, ";", "#X", 0, 70, 115, 1406, 3, 6, 0, 0, ";", "#X", 0, 74, 116, 771, 3, 6, 0, 0, ";", "#X", 0, 77, 119, 819, 3, 6, 0, 0, ";", "#X", 763, 39, 125, 763, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 482, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 6683, 10, 13, 0, 0, ";", "#X", 8, 63, 115, 361, 5, 3, 0, 0, ";", "#X", 0, 51, 123, 755, 1, 4, 0, 0, ";", "#X", 0, 55, 123, 755, 1, 4, 0, 0, ";", "#X", 0, 58, 123, 699, 1, 4, 0, 0, ";", "#X", 0, 63, 122, 755, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 723, 1, 4, 0, 0, ";", "#X", 0, 51, 116, 787, 3, 6, 0, 0, ";", "#X", 0, 58, 115, 570, 3, 6, 0, 0, ";", "#X", 0, 63, 117, 747, 3, 6, 0, 0, ";", "#X", 0, 67, 114, 586, 3, 6, 0, 0, ";", "#X", 0, 75, 112, 779, 3, 6, 0, 0, ";", "#X", 386, 67, 115, 385, 5, 3, 0, 0, ";", "#X", 0, 79, 112, 457, 3, 6, 0, 0, ";", "#X", 377, 38, 125, 851, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 876, 10, 13, 0, 0, ";", "#X", 0, 57, 123, 2811, 10, 13, 0, 0, ";", "#X", 8, 66, 123, 811, 5, 3, 0, 0, ";", "#X", 0, 50, 122, 1615, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 1374, 1, 4, 0, 0, ";", "#X", 0, 62, 123, 3109, 1, 4, 0, 0, ";", "#X", 0, 66, 122, 860, 1, 4, 0, 0, ";", "#X", 0, 62, 114, 3084, 3, 6, 0, 0, ";", "#X", 0, 72, 114, 1197, 3, 6, 0, 0, ";", "#X", 0, 74, 114, 3084, 3, 6, 0, 0, ";", "#X", 0, 78, 110, 803, 3, 6, 0, 0, ";", "#X", 763, 34, 125, 410, 2, 5, 0, 0, ";", "#X", 0, 40, 124, 1317, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 522, 10, 13, 0, 0, ";", "#X", 8, 67, 123, 402, 5, 3, 0, 0, ";", "#X", 0, 67, 122, 297, 1, 4, 0, 0, ";", "#X", 0, 79, 111, 2313, 3, 6, 0, 0, ";", "#X", 378, 33, 125, 401, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 176, 10, 13, 0, 0, ";", "#X", 0, 46, 112, 594, 10, 13, 0, 0, ";", "#X", 8, 69, 122, 433, 5, 3, 0, 0, ";", "#X", 0, 69, 123, 257, 1, 4, 0, 0, ";", "#X", 0, 81, 112, 192, 3, 6, 0, 0, ";", "#X", 377, 31, 125, 442, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 820, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 490, 10, 13, 0, 0, ";", "#X", 8, 70, 122, 1550, 5, 3, 0, 0, ";", "#X", 0, 43, 122, 1205, 1, 4, 0, 0, ";", "#X", 0, 58, 122, 860, 1, 4, 0, 0, ";", "#X", 0, 67, 121, 1550, 1, 4, 0, 0, ";", "#X", 0, 70, 121, 1575, 1, 4, 0, 0, ";", "#X", 0, 82, 116, 1542, 3, 6, 0, 0, ";", "#X", 378, 38, 122, 417, 2, 5, 0, 0, ";", "#X", 0, 46, 112, 602, 10, 13, 0, 0, ";", "#X", 8, 50, 122, 1156, 1, 4, 0, 0, ";", "#X", 377, 43, 125, 354, 2, 5, 0, 0, ";", "#X", 0, 40, 123, 225, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 1350, 10, 13, 0, 0, ";", "#X", 8, 55, 123, 787, 1, 4, 0, 0, ";", "#X", 185, 43, 122, 209, 10, 13, 0, 0, ";", "#X", 193, 31, 125, 369, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 160, 10, 13, 0, 0, ";", "#X", 0, 45, 122, 345, 10, 13, 0, 0, ";", "#X", 8, 58, 110, 345, 1, 4, 0, 0, ";", "#X", 377, 32, 125, 1093, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 860, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 3808, 10, 13, 0, 0, ";", "#X", 8, 60, 122, 1101, 5, 3, 0, 0, ";", "#X", 0, 44, 123, 1599, 1, 4, 0, 0, ";", "#X", 0, 60, 112, 1294, 3, 6, 0, 0, ";", "#X", 0, 63, 112, 1221, 3, 6, 0, 0, ";", "#X", 0, 68, 112, 1567, 3, 6, 0, 0, ";", "#X", 0, 72, 112, 772, 3, 6, 0, 0, ";", "#X", 378, 46, 111, 586, 10, 13, 0, 0, ";", "#X", 8, 51, 121, 1068, 1, 4, 0, 0, ";", "#X", 377, 40, 122, 1278, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 474, 10, 13, 0, 0, ";", "#X", 9, 56, 123, 779, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 610, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 747, 1, 4, 0, 0, ";", "#X", 0, 68, 120, 827, 1, 4, 0, 0, ";", "#X", 0, 72, 113, 771, 3, 6, 0, 0, ";", "#X", 377, 32, 125, 337, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 177, 10, 13, 0, 0, ";", "#X", 0, 46, 114, 498, 10, 13, 0, 0, ";", "#X", 8, 60, 117, 225, 5, 3, 0, 0, ";", "#X", 0, 74, 110, 370, 3, 6, 0, 0, ";", "#X", 193, 62, 114, 241, 5, 3, 0, 0, ";", "#X", 185, 39, 125, 1357, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 1004, 10, 13, 0, 0, ";", "#X", 0, 46, 122, 578, 10, 13, 0, 0, ";", "#X", 8, 58, 116, 1285, 5, 3, 0, 0, ";", "#X", 0, 51, 122, 361, 1, 4, 0, 0, ";", "#X", 0, 58, 117, 755, 1, 4, 0, 0, ";", "#X", 0, 63, 115, 1108, 1, 4, 0, 0, ";", "#X", 0, 67, 119, 747, 1, 4, 0, 0, ";", "#X", 0, 63, 114, 1542, 3, 6, 0, 0, ";", "#X", 0, 67, 114, 1542, 3, 6, 0, 0, ";", "#X", 0, 70, 114, 1542, 3, 6, 0, 0, ";", "#X", 377, 46, 111, 522, 10, 13, 0, 0, ";", "#X", 8, 51, 109, 755, 1, 4, 0, 0, ";", "#X", 378, 40, 124, 457, 10, 13, 0, 0, ";", "#X", 0, 46, 123, 490, 10, 13, 0, 0, ";", "#X", 8, 58, 115, 281, 1, 4, 0, 0, ";", "#X", 377, 35, 123, 354, 10, 13, 0, 0, ";", "#X", 0, 46, 120, 5791, 10, 13, 0, 0, ";", "#X", 386, 36, 123, 996, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 915, 10, 13, 0, 0, ";", "#X", 0, 49, 122, 7229, 10, 13, 0, 0, ";", "#X", 8, 80, 121, 353, 6, 2, 0, 0, ";", "#X", 0, 48, 122, 1164, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 490, 1, 4, 0, 0, ";", "#X", 0, 72, 122, 425, 1, 4, 0, 0, ";", "#X", 385, 79, 122, 426, 6, 2, 0, 0, ";", "#X", 0, 55, 117, 394, 1, 4, 0, 0, ";", "#X", 0, 63, 120, 434, 1, 4, 0, 0, ";", "#X", 378, 40, 123, 1261, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 297, 10, 13, 0, 0, ";", "#X", 8, 75, 120, 377, 6, 2, 0, 0, ";", "#X", 0, 60, 123, 377, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 418, 1, 4, 0, 0, ";", "#X", 0, 72, 122, 819, 1, 4, 0, 0, ";", "#X", 377, 36, 119, 362, 2, 5, 0, 0, ";", "#X", 0, 35, 118, 193, 10, 13, 0, 0, ";", "#X", 0, 42, 117, 161, 10, 13, 0, 0, ";", "#X", 8, 67, 121, 241, 6, 2, 0, 0, ";", "#X", 0, 55, 122, 362, 1, 4, 0, 0, ";", "#X", 0, 63, 121, 370, 1, 4, 0, 0, ";", "#X", 193, 70, 119, 1679, 6, 2, 0, 0, ";", "#X", 185, 31, 123, 1181, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 1269, 10, 13, 0, 0, ";", "#X", 0, 42, 121, 217, 10, 13, 0, 0, ";", "#X", 8, 43, 121, 1173, 1, 4, 0, 0, ";", "#X", 0, 67, 121, 458, 1, 4, 0, 0, ";", "#X", 0, 70, 122, 594, 1, 4, 0, 0, ";", "#X", 377, 42, 111, 121, 10, 13, 0, 0, ";", "#X", 8, 50, 114, 434, 1, 4, 0, 0, ";", "#X", 0, 62, 116, 699, 1, 4, 0, 0, ";", "#X", 378, 40, 124, 1213, 10, 13, 0, 0, ";", "#X", 0, 42, 123, 257, 10, 13, 0, 0, ";", "#X", 8, 55, 122, 747, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 1365, 1, 4, 0, 0, ";", "#X", 0, 70, 122, 795, 1, 4, 0, 0, ";", "#X", 378, 34, 120, 401, 2, 5, 0, 0, ";", "#X", 0, 42, 113, 152, 10, 13, 0, 0, ";", "#X", 8, 50, 114, 152, 1, 4, 0, 0, ";", "#X", 0, 62, 122, 249, 1, 4, 0, 0, ";", "#X", 377, 36, 125, 1109, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 916, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 217, 10, 13, 0, 0, ";", "#X", 8, 79, 121, 426, 6, 2, 0, 0, ";", "#X", 0, 48, 121, 1173, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 795, 1, 4, 0, 0, ";", "#X", 0, 72, 122, 522, 1, 4, 0, 0, ";", "#X", 378, 42, 114, 144, 10, 13, 0, 0, ";", "#X", 8, 77, 120, 425, 6, 2, 0, 0, ";", "#X", 0, 55, 119, 409, 1, 4, 0, 0, ";", "#X", 377, 40, 124, 1237, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 249, 10, 13, 0, 0, ";", "#X", 8, 75, 119, 450, 6, 2, 0, 0, ";", "#X", 0, 60, 123, 378, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 442, 1, 4, 0, 0, ";", "#X", 0, 72, 122, 844, 1, 4, 0, 0, ";", "#X", 378, 36, 123, 337, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 192, 10, 13, 0, 0, ";", "#X", 0, 42, 117, 136, 10, 13, 0, 0, ";", "#X", 8, 74, 119, 233, 6, 2, 0, 0, ";", "#X", 0, 55, 121, 136, 1, 4, 0, 0, ";", "#X", 0, 63, 121, 321, 1, 4, 0, 0, ";", "#X", 192, 70, 120, 1719, 6, 2, 0, 0, ";", "#X", 185, 31, 125, 1229, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 948, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 330, 10, 13, 0, 0, ";", "#X", 8, 43, 123, 1133, 1, 4, 0, 0, ";", "#X", 0, 62, 118, 1318, 1, 4, 0, 0, ";", "#X", 0, 67, 122, 1438, 1, 4, 0, 0, ";", "#X", 0, 70, 122, 1583, 1, 4, 0, 0, ";", "#X", 378, 46, 121, 1156, 10, 13, 0, 0, ";", "#X", 385, 40, 124, 23133, 10, 13, 0, 0, ";", "#X", 0, 42, 122, 338, 10, 13, 0, 0, ";", "#X", 386, 34, 117, 401, 2, 5, 0, 0, ";", "#X", 0, 35, 123, 169, 10, 13, 0, 0, ";", "#X", 0, 46, 122, -1, 10, 13, 0, 0, ";", "#X", 385, 36, 125, 1486, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 1213, 10, 13, 0, 0, ";", "#X", 0, 49, 122, 7679, 10, 13, 0, 0, ";", "#X", 8, 79, 120, 370, 6, 2, 0, 0, ";", "#X", 0, 48, 121, 1639, 1, 4, 0, 0, ";", "#X", 0, 63, 123, 1422, 1, 4, 0, 0, ";", "#X", 0, 67, 120, 603, 1, 4, 0, 0, ";", "#X", 0, 72, 123, 948, 1, 4, 0, 0, ";", "#X", 386, 75, 118, 394, 6, 2, 0, 0, ";", "#X", 386, 77, 119, 449, 6, 2, 0, 0, ";", "#X", 0, 67, 18, 682, 1, 4, 0, 0, ";", "#X", 385, 79, 119, 217, 6, 2, 0, 0, ";", "#X", 0, 72, 18, 129, 1, 4, 0, 0, ";", "#X", 193, 75, 118, 385, 6, 2, 0, 0, ";", "#X", 185, 32, 123, 3156, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 2843, 10, 13, 0, 0, ";", "#X", 0, 57, 123, 2819, 10, 13, 0, 0, ";", "#X", 8, 44, 122, 3140, 1, 4, 0, 0, ";", "#X", 0, 56, 120, 3068, 1, 4, 0, 0, ";", "#X", 0, 59, 123, 2714, 1, 4, 0, 0, ";", "#X", 0, 63, 122, 2899, 1, 4, 0, 0, ";", "#X", 0, 68, 122, 2923, 1, 4, 0, 0, ";", "#X", 192, 71, 117, 2796, 6, 2, 0, 0, ";", "#X", 1342, 51, 120, 209, 10, 13, 0, 0, ";", "#X", 385, 51, 119, 450, 10, 13, 0, 0, ";", "#X", 579, 51, 120, 3799, 10, 13, 0, 0, ";", "#X", 578, 34, 125, 3084, 2, 5, 0, 0, ";", "#X", 0, 35, 124, 2948, 10, 13, 0, 0, ";", "#X", 0, 49, 123, 18578, 10, 13, 0, 0, ";", "#X", 8, 78, 117, 104, 6, 2, 0, 0, ";", "#X", 0, 79, 121, 385, 6, 2, 0, 0, ";", "#X", 0, 46, 123, 3879, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 924, 1, 4, 0, 0, ";", "#X", 0, 63, 122, 747, 1, 4, 0, 0, ";", "#X", 0, 68, 123, 691, 1, 4, 0, 0, ";", "#X", 0, 79, 104, 434, 3, 6, 0, 0, ";", "#X", 0, 66, 115, 104, 7, 8, 0, 0, ";", "#X", 0, 67, 120, 385, 7, 8, 0, 0, ";", "#X", 385, 77, 120, 346, 6, 2, 0, 0, ";", "#X", 0, 77, 110, 330, 3, 6, 0, 0, ";", "#X", 0, 65, 119, 346, 7, 8, 0, 0, ";", "#X", 386, 77, 121, 450, 6, 2, 0, 0, ";", "#X", 0, 63, 117, 402, 1, 4, 0, 0, ";", "#X", 0, 68, 120, 490, 1, 4, 0, 0, ";", "#X", 0, 77, 116, 450, 3, 6, 0, 0, ";", "#X", 0, 65, 120, 450, 7, 8, 0, 0, ";", "#X", 386, 75, 118, 329, 6, 2, 0, 0, ";", "#X", 0, 58, 118, 457, 1, 4, 0, 0, ";", "#X", 0, 75, 112, 377, 3, 6, 0, 0, ";", "#X", 0, 63, 117, 329, 7, 8, 0, 0, ";", "#X", 385, 75, 119, 386, 6, 2, 0, 0, ";", "#X", 0, 60, 119, 1430, 1, 4, 0, 0, ";", "#X", 0, 63, 118, 1333, 1, 4, 0, 0, ";", "#X", 0, 68, 118, 1237, 1, 4, 0, 0, ";", "#X", 0, 75, 111, 402, 3, 6, 0, 0, ";", "#X", 0, 63, 118, 386, 7, 8, 0, 0, ";", "#X", 386, 72, 118, 827, 6, 2, 0, 0, ";", "#X", 0, 72, 114, 787, 3, 6, 0, 0, ";", "#X", 0, 60, 116, 827, 7, 8, 0, 0, ";", "#X", 192, 58, 18, 651, 1, 4, 0, 0, ";", "#X", 579, 74, 120, 377, 6, 2, 0, 0, ";", "#X", 0, 74, 112, 377, 3, 6, 0, 0, ";", "#X", 0, 62, 119, 377, 7, 8, 0, 0, ";", "#X", 377, 39, 124, 5430, 2, 5, 0, 0, ";", "#X", 0, 35, 122, 1093, 10, 13, 0, 0, ";", "#X", 0, 52, 119, 11607, 10, 13, 0, 0, ";", "#X", 8, 75, 120, 4699, 6, 2, 0, 0, ";", "#X", 0, 39, 117, 803, 1, 4, 0, 0, ";", "#X", 0, 58, 119, 386, 1, 4, 0, 0, ";", "#X", 0, 63, 121, 611, 1, 4, 0, 0, ";", "#X", 0, 67, 122, 643, 1, 4, 0, 0, ";", "#X", 0, 63, 96, 6161, 3, 6, 0, 0, ";", "#X", 0, 67, 65, 1342, 3, 6, 0, 0, ";", "#X", 0, 75, 103, 1518, 3, 6, 0, 0, ";", "#X", 0, 63, 119, 4699, 7, 8, 0, 0, ";", "#X", 386, 46, 119, 15984, 1, 4, 0, 0, ";", "#X", 377, 51, 119, 386, 10, 13, 0, 0, ";", "#X", 8, 51, 122, 619, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 402, 1, 4, 0, 0, ";", "#X", 378, 35, 121, 281, 10, 13, 0, 0, ";", "#X", 8, 70, 122, 434, 1, 4, 0, 0, ";", "#X", 377, 35, 123, 1454, 10, 13, 0, 0, ";", "#X", 0, 51, 119, 386, 10, 13, 0, 0, ";", "#X", 8, 56, 122, 1671, 1, 4, 0, 0, ";", "#X", 0, 63, 117, 1631, 1, 4, 0, 0, ";", "#X", 0, 68, 122, 482, 1, 4, 0, 0, ";", "#X", 0, 72, 120, 442, 1, 4, 0, 0, ";", "#X", 0, 68, 111, 1478, 3, 6, 0, 0, ";", "#X", 0, 72, 111, 466, 3, 6, 0, 0, ";", "#X", 386, 70, 123, 442, 1, 4, 0, 0, ";", "#X", 0, 74, 118, 394, 1, 4, 0, 0, ";", "#X", 0, 74, 110, 586, 3, 6, 0, 0, ";", "#X", 378, 51, 119, 385, 10, 13, 0, 0, ";", "#X", 8, 68, 120, 642, 1, 4, 0, 0, ";", "#X", 0, 72, 121, 763, 1, 4, 0, 0, ";", "#X", 0, 72, 110, 409, 3, 6, 0, 0, ";", "#X", 385, 74, 118, 418, 1, 4, 0, 0, ";", "#X", 0, 74, 89, 378, 3, 6, 0, 0, ";", "#X", 378, 35, 122, 1132, 10, 13, 0, 0, ";", "#X", 0, 51, 119, 385, 10, 13, 0, 0, ";", "#X", 8, 55, 117, 1542, 1, 4, 0, 0, ";", "#X", 0, 67, 122, 498, 1, 4, 0, 0, ";", "#X", 0, 70, 121, 522, 1, 4, 0, 0, ";", "#X", 0, 67, 96, 1590, 3, 6, 0, 0, ";", "#X", 0, 70, 101, 1542, 3, 6, 0, 0, ";", "#X", 385, 63, 121, 1012, 1, 4, 0, 0, ";", "#X", 378, 51, 119, 449, 10, 13, 0, 0, ";", "#X", 8, 67, 121, 369, 1, 4, 0, 0, ";", "#X", 377, 35, 117, 281, 10, 13, 0, 0, ";", "#X", 8, 70, 120, 386, 1, 4, 0, 0, ";", "#X", 378, 35, 122, 1413, 10, 13, 0, 0, ";", "#X", 0, 51, 120, 490, 10, 13, 0, 0, ";", "#X", 8, 54, 121, 1598, 1, 4, 0, 0, ";", "#X", 0, 66, 122, 1237, 1, 4, 0, 0, ";", "#X", 0, 69, 122, 1197, 1, 4, 0, 0, ";", "#X", 0, 72, 119, 442, 1, 4, 0, 0, ";", "#X", 0, 66, 110, 1630, 3, 6, 0, 0, ";", "#X", 0, 72, 103, 474, 3, 6, 0, 0, ";", "#X", 385, 74, 117, 378, 1, 4, 0, 0, ";", "#X", 0, 74, 112, 354, 3, 6, 0, 0, ";", "#X", 378, 51, 119, 602, 10, 13, 0, 0, ";", "#X", 8, 72, 117, 434, 1, 4, 0, 0, ";", "#X", 0, 72, 108, 522, 3, 6, 0, 0, ";", "#X", 385, 74, 118, 402, 1, 4, 0, 0, ";", "#X", 0, 74, 100, 1968, 3, 6, 0, 0, ";", "#X", 378, 35, 121, 1502, 10, 13, 0, 0, ";", "#X", 0, 51, 119, 530, 10, 13, 0, 0, ";", "#X", 8, 53, 120, 3149, 1, 4, 0, 0, ";", "#X", 0, 65, 121, 426, 1, 4, 0, 0, ";", "#X", 0, 70, 122, 859, 1, 4, 0, 0, ";", "#X", 0, 62, 113, 40, 3, 6, 0, 0, ";", "#X", 0, 65, 71, 2900, 3, 6, 0, 0, ";", "#X", 0, 70, 106, 1470, 3, 6, 0, 0, ";", "#X", 386, 62, 122, 706, 1, 4, 0, 0, ";", "#X", 377, 51, 119, 498, 10, 13, 0, 0, ";", "#X", 8, 65, 116, 619, 1, 4, 0, 0, ";", "#X", 386, 70, 120, 281, 1, 4, 0, 0, ";", "#X", 377, 35, 120, 980, 10, 13, 0, 0, ";", "#X", 0, 51, 120, 506, 10, 13, 0, 0, ";", "#X", 8, 61, 121, 1277, 1, 4, 0, 0, ";", "#X", 0, 65, 122, 1157, 1, 4, 0, 0, ";", "#X", 0, 70, 123, 474, 1, 4, 0, 0, ";", "#X", 0, 61, 116, 1599, 3, 6, 0, 0, ";", "#X", 0, 70, 110, 442, 3, 6, 0, 0, ";", "#X", 386, 68, 118, 273, 1, 4, 0, 0, ";", "#X", 0, 68, 112, 353, 3, 6, 0, 0, ";", "#X", 377, 51, 118, 450, 10, 13, 0, 0, ";", "#X", 8, 68, 121, 394, 1, 4, 0, 0, ";", "#X", 0, 68, 116, 313, 3, 6, 0, 0, ";", "#X", 378, 35, 118, 289, 10, 13, 0, 0, ";", "#X", 8, 67, 117, 209, 1, 4, 0, 0, ";", "#X", 0, 67, 114, 2329, 3, 6, 0, 0, ";", "#X", 377, 35, 121, 5888, 10, 13, 0, 0, ";", "#X", 0, 51, 118, 498, 10, 13, 0, 0, ";", "#X", 8, 52, 115, 2611, 1, 4, 0, 0, ";", "#X", 0, 60, 117, 297, 1, 4, 0, 0, ";", "#X", 0, 64, 115, 506, 1, 4, 0, 0, ";", "#X", 0, 67, 121, 844, 1, 4, 0, 0, ";", "#X", 0, 60, 111, 3510, 3, 6, 0, 0, ";", "#X", 0, 64, 106, 1599, 3, 6, 0, 0, ";", "#X", 386, 60, 114, 2474, 1, 4, 0, 0, ";", "#X", 377, 51, 118, 482, 10, 13, 0, 0, ";", "#X", 8, 64, 122, 2346, 1, 4, 0, 0, ";", "#X", 378, 46, 112, 827, 2, 5, 0, 0, ";", "#X", 8, 70, 117, 217, 1, 4, 0, 0, ";", "#X", 377, 46, 114, 0, 2, 5, 0, 0, ";", "#X", 0, 51, 118, 434, 10, 13, 0, 0, ";", "#X", 8, 70, 120, 466, 1, 4, 0, 0, ";", "#X", 0, 70, 101, 434, 3, 6, 0, 0, ";", "#X", 378, 44, 118, 843, 2, 5, 0, 0, ";", "#X", 8, 68, 118, 257, 1, 4, 0, 0, ";", "#X", 0, 68, 113, 369, 3, 6, 0, 0, ";", "#X", 378, 51, 119, 570, 10, 13, 0, 0, ";", "#X", 8, 68, 115, 281, 1, 4, 0, 0, ";", "#X", 0, 68, 117, 377, 3, 6, 0, 0, ";", "#X", 377, 43, 119, 273, 2, 5, 0, 0, ";", "#X", 8, 67, 115, 273, 1, 4, 0, 0, ";", "#X", 0, 67, 117, 321, 3, 6, 0, 0, ";", "#X", 378, 43, 120, 385, 2, 5, 0, 0, ";", "#X", 0, 51, 118, 626, 10, 13, 0, 0, ";", "#X", 8, 36, 123, 401, 1, 4, 0, 0, ";", "#X", 0, 48, 120, 1542, 1, 4, 0, 0, ";", "#X", 0, 60, 121, 385, 1, 4, 0, 0, ";", "#X", 0, 67, 123, 2305, 1, 4, 0, 0, ";", "#X", 0, 67, 116, 1590, 3, 6, 0, 0, ";", "#X", 377, 40, 119, 313, 2, 5, 0, 0, ";", "#X", 8, 64, 122, 418, 1, 4, 0, 0, ";", "#X", 0, 64, 114, 466, 3, 6, 0, 0, ";", "#X", 378, 36, 120, 401, 2, 5, 0, 0, ";", "#X", 0, 51, 108, 843, 10, 13, 0, 0, ";", "#X", 8, 60, 101, 682, 1, 4, 0, 0, ";", "#X", 0, 60, 108, 2305, 3, 6, 0, 0, ";", "#X", 377, 34, 120, 418, 2, 5, 0, 0, ";", "#X", 8, 58, 122, 346, 1, 4, 0, 0, ";", "#X", 0, 58, 108, 418, 3, 6, 0, 0, ";", "#X", 378, 33, 120, 1478, 2, 5, 0, 0, ";", "#X", 0, 49, 117, -1, 10, 13, 0, 0, ";", "#X", 8, 53, 123, 385, 1, 4, 0, 0, ";", "#X", 0, 57, 123, 385, 1, 4, 0, 0, ";", "#X", 0, 60, 123, 385, 1, 4, 0, 0, ";", "#X", 0, 65, 123, 385, 1, 4, 0, 0, ";", "#X", 0, 57, 111, 1638, 3, 6, 0, 0, ";", "#X", 0, 65, 106, 11357, 3, 6, 0, 0, ";", "#X", 353, 48, 115, 402, 1, 4, 0, 0, ";", "#X", 402, 53, 120, 522, 1, 4, 0, 0, ";", "#X", 16, 65, 120, 811, 1, 4, 0, 0, ";", "#X", 426, 48, 102, 425, 1, 4, 0, 0, ";", "#X", 345, 58, 107, 691, 3, 6, 0, 0, ";", "#X", 0, 60, 18, 104, 3, 6, 0, 0, ";", "#X", 24, 62, 118, 482, 1, 4, 0, 0, ";", "#X", 8, 46, 119, 0, 1, 4, 0, 0, ";", "#X", 0, 53, 117, 5936, 1, 4, 0, 0, ";", "#X", 0, 58, 122, 908, 1, 4, 0, 0, ";", "#X", 514, 62, 105, 378, 1, 4, 0, 0, ";", "#X", 225, 57, 110, 1004, 3, 6, 0, 0, ";", "#X", 121, 57, 109, 361, 1, 4, 0, 0, ";", "#X", 8, 60, 121, 425, 1, 4, 0, 0, ";", "#X", 8, 45, 120, 1044, 1, 4, 0, 0, ";", "#X", 498, 60, 119, 457, 1, 4, 0, 0, ";", "#X", 8, 57, 119, 353, 1, 4, 0, 0, ";", "#X", 321, 56, 106, 1365, 3, 6, 0, 0, ";", "#X", 161, 59, 114, 1309, 1, 4, 0, 0, ";", "#X", 8, 44, 117, 1510, 1, 4, 0, 0, ";", "#X", 8, 56, 122, 1381, 1, 4, 0, 0, ";", "#X", 650, 65, 119, 940, 1, 4, 0, 0, ";", "#X", 522, 55, 89, 2233, 3, 6, 0, 0, ";", "#X", 0, 62, 76, 2884, 3, 6, 0, 0, ";", "#X", 225, 55, 115, 2667, 1, 4, 0, 0, ";", "#X", 8, 43, 122, 2699, 1, 4, 0, 0, ";", "#X", 0, 58, 122, 2675, 1, 4, 0, 0, ";", "#X", 900, 65, 119, 1751, 1, 4, 0, 0, ";", "#X", 1373, 41, 18, 4153, 3, 6, 0, 0, ";", "#X", 0, 53, 18, 4217, 3, 6, 0, 0, ";", "#X", 0, 57, 18, 4257, 3, 6, 0, 0, ";", "#X", 386, 41, 122, 4626, 1, 4, 0, 0, ";", "#X", 48, 53, 122, 4819, 1, 4, 0, 0, ";", "#X", 48, 57, 122, 4820, 1, 4, 0, 0, ";", "#X", 48, 60, 122, 4627, 1, 4, 0, 0, ";", "#X", 49, 65, 123, 5012, 1, 4, 0, 0, ";", "#X", "stop", ";" ],
					"text" : "detonate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 855.999995231628418, 1366.899997174739838, 90.0, 22.0 ],
					"text" : "loadmess 500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 855.999995231628418, 1390.899997174739838, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 126.0, 183.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 126.0, 149.0, 325.0, 22.0 ],
									"text" : "0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 126.0, 117.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 817.499995231628418, 1418.399997174739838, 34.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 309.0, 17.0, 62.0, 20.0 ],
									"text" : "ramp time"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 78.0, 17.0, 29.0, 20.0 ],
									"text" : "lists"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 273.0, 17.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 44.0, 375.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 44.0, 17.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 360.0, 62.0, 150.0, 74.0 ],
									"text" : "source: https://cycling74.com/forums/is-there-an-easy-way-to-use-line-on-lists-or-an-equivalent-thereof"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 70.0, 298.0, 158.0, 49.0 ],
									"text" : "0. -0. 0. -0. -0. -0. -0. 0. -0. 0. -0. -0. 0. -0. -0. -0. 0. -0. 0. 0. -0. 0. -0. 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"linecount" : 12,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 230.75, 237.0, 155.0, 169.0 ],
									"text" : "0.001735 -0.000682 0.001017 -0.000485 -0.000114 -0.000365 -0.001286 0.002405 -0.000359 0.000036 -0.001609 -0.000293 0.000792 -0.000084 -0.000253 -0.001208 0.001595 -0.000006 0.000045 0.000534 -0.000197 0.000371 -0.002044 0.000455"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 44.0, 197.5, 63.0, 22.0 ],
									"text" : "line 0. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 54.0, 225.5, 89.0, 20.0 ],
									"text" : "rampe 1. -> 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 235.0, 213.0, 76.0, 20.0 ],
									"text" : "difference"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 44.0, 156.0, 79.0, 22.0 ],
									"text" : "pack 0. 2000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 44.0, 332.0, 246.583327999999995, 22.0 ],
									"text" : "vexpr ($f2 +$f1) @scalarmode 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 44.0, 255.0, 172.0, 22.0 ],
									"text" : "vexpr $f2 *$f1 @scalarmode 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 197.0, 184.0, 168.0, 22.0 ],
									"text" : "vexpr $f2-$f1 @scalarmode 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "bang", "float", "", "", "" ],
									"patching_rect" : [ 44.0, 119.0, 271.0, 22.0 ],
									"text" : "t b 1. l l l"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"source" : [ "obj-1", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"order" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 1 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 805.999995231628418, 1446.399997174739838, 69.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p line-list"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 805.999995231628418, 1757.399997174739838, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"cols" : 24,
					"colwidth" : 33,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"hscroll" : 0,
					"id" : "obj-47",
					"maxclass" : "jit.cellblock",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "list", "", "", "" ],
					"patching_rect" : [ 834.0, 830.400000035762787, 617.200003147125244, 20.0 ],
					"rows" : 1,
					"vscroll" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 386.0, 25.0, 50.5, 22.0 ],
					"text" : "jit.3m"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 79.0, 1212.0, 687.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 108.0, 88.0, 29.5, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"cols" : 24,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "jit.cellblock",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "list", "", "", "" ],
									"patching_rect" : [ 332.0, 100.0, 683.0, 37.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 180.0, 115.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"cols" : 24,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-23",
									"maxclass" : "jit.cellblock",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "list", "", "", "" ],
									"patching_rect" : [ 208.0, 302.0, 679.0, 38.0 ],
									"rows" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 208.0, 88.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 208.0, 115.0, 73.0, 22.0 ],
									"text" : "setall 1."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-14",
									"maxclass" : "jit.cellblock",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "list", "", "", "" ],
									"patching_rect" : [ 208.0, 199.0, 683.0, 37.0 ],
									"rows" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 208.0, 144.0, 129.0, 22.0 ],
									"text" : "jit.matrix 1 float32 10 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 108.0, 242.0, 56.0, 22.0 ],
									"text" : "jit.la.mult"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 159.0, 392.0, 150.0, 47.0 ],
									"text" : "output: 1 x 12 matrix, where each entry is a probability of a key"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 159.0, 58.0, 337.0, 20.0 ],
									"text" : "input: 10 x 12 matrix (10 is max number of notes at one time)"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 108.0, 392.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 108.0, 42.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"order" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 1,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"order" : 1,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"order" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 816.0, 802.0, 139.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p sum columns of matrix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 329.0, 25.0, 53.0, 22.0 ],
					"text" : "jit.dimop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 288.0, 25.0, 34.0, 22.0 ],
					"text" : "jit.op"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 835.0, 649.0, 67.0, 22.0 ],
					"text" : "list.group 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 835.0, 623.0, 69.0, 22.0 ],
					"text" : "o.route /out"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 835.0, 456.0, 80.0, 22.0 ],
					"text" : "o.pack /notes"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-67",
					"linecount" : 8,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 835.0, 485.0, 448.0, 121.0 ],
					"text" : "/num_notes = length(/notes),\n/string/setcell = nfill(/num_notes, \"setcell\"),\n/col = /notes % 12,\n/row = aseq(0, /num_notes - 1),\n/string/val = nfill(/num_notes, \"val\"),\n/ones = nfill(/num_notes, 1.0),\n\n/out = interleave(/string/setcell, /col, /row, /string/val, /ones)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1008.199999392032623, 628.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 920.999995231628418, 1429.699999928474426, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 263.0, 100.0, 105.0, 22.0 ],
									"text" : "jit.fill hsl @plane 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 156.0, 100.0, 105.0, 22.0 ],
									"text" : "jit.fill hsl @plane 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 118.0, 182.400000035762787, 96.0, 22.0 ],
									"text" : "jit.spill @plane 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 100.0, 105.0, 22.0 ],
									"text" : "jit.fill hsl @plane 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 50.0, 134.0, 148.0, 22.0 ],
									"text" : "jit.matrix hsl 4 float32 12 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 125.5, 284.0, 60.0, 22.0 ],
									"text" : "jit.hsl2rgb"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 248.0, 190.200004458427429, 150.0, 60.0 ],
									"text" : "H S V\n0-1 1 1\nto \nR G B"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"order" : 0,
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"order" : 1,
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 659.0, 34.0, 81.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p hsv attempt"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 816.0, 925.0, 41.0, 22.0 ],
					"text" : "jit.spill"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.529411764705882, 0.529411764705882, 0.529411764705882, 1.0 ],
					"bgcolor2" : [ 0.529411764705882, 0.529411764705882, 0.529411764705882, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.352941176470588, 0.352941176470588, 0.352941176470588, 1.0 ],
					"bgfillcolor_color1" : [ 0.529411764705882, 0.529411764705882, 0.529411764705882, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "color",
					"gradient" : 1,
					"id" : "obj-59",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2364.799999356269836, 68.80000102519989, 34.0, 22.0 ],
					"text" : "write"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 2364.799999356269836, 93.600001394748688, 31.0, 22.0 ],
					"text" : "t s b"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.529411764705882, 0.529411764705882, 0.529411764705882, 1.0 ],
					"bgcolor2" : [ 0.529411764705882, 0.529411764705882, 0.529411764705882, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.352941176470588, 0.352941176470588, 0.352941176470588, 1.0 ],
					"bgfillcolor_color1" : [ 0.529411764705882, 0.529411764705882, 0.529411764705882, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "color",
					"gradient" : 1,
					"id" : "obj-52",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2403.00000262260437, 68.80000102519989, 33.0, 22.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "dump", "clear" ],
					"patching_rect" : [ 2183.799999356269836, 96.000001430511475, 75.0, 22.0 ],
					"text" : "t dump clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2183.799999356269836, 68.80000102519989, 39.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "clear" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 309.0, -836.0, 646.0, 496.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 4.0, 4.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "dump", "clear" ],
									"patching_rect" : [ 244.0, 188.0, 77.0, 22.0 ],
									"text" : "t dump clear"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 138.0, 272.0, 111.0, 22.0 ],
									"text" : "prepend add_point"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 138.0, 240.0, 79.0, 22.0 ],
									"text" : "route symbol"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 34.0, 60.0, 123.0, 22.0 ],
									"text" : "routepass clear done"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 138.0, 120.0, 85.0, 22.0 ],
									"text" : "prepend store"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 138.0, 156.0, 70.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"precision" : 6
									}
,
									"text" : "coll storage"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-60",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "clear" ],
									"patching_rect" : [ 34.0, 20.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-61",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 173.0, 20.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-62",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 138.0, 320.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-21", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-41", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-44", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 2239.799999356269836, 128.000001907348633, 144.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p coll_management"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-60",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2692.800040125846863, 207.400000035762787, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.709803921568627, 0.196078431372549, 1.0 ],
					"id" : "obj-54",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1008.199999392032623, 659.000001728534698, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.709803921568627, 0.196078431372549, 1.0 ],
					"id" : "obj-53",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 920.999995231628418, 1455.562448710287072, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 920.999995231628418, 1483.199999928474426, 322.0, 22.0 ],
					"text" : "C C# D D# E F F# G G# A A# B c c# d d# e f f# g g# a a# b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 805.999995231628418, 1722.0, 67.0, 22.0 ],
					"text" : "list.group 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 805.999995231628418, 1687.0, 69.0, 22.0 ],
					"text" : "o.route /out"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 805.999995231628418, 1510.199999928474426, 123.0, 22.0 ],
					"text" : "o.pack /probs /names"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-82",
					"linecount" : 8,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 805.999995231628418, 1546.0, 433.0, 121.0 ],
					"text" : "/prob/max ??= max(/probs),\n/prob/min ??= min(/probs),\n/r = scale(/probs, /prob/min, /prob/max, 0., 1.),\n/g = nfill(24, 0.),\n/b = nfill(24, 0.),\n/string/rgb = nfill(24, \"rgb\"),\n\n/out = interleave(/names, /string/rgb, /r, /g, /b)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "", "clear" ],
					"patching_rect" : [ 816.0, 427.900000035762787, 57.0, 22.0 ],
					"text" : "t b l clear"
				}

			}
, 			{
				"box" : 				{
					"cols" : 12,
					"colwidth" : 33,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"hscroll" : 0,
					"id" : "obj-44",
					"maxclass" : "jit.cellblock",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "list", "", "", "" ],
					"patching_rect" : [ 834.0, 722.35000005364418, 413.0, 26.049999982118607 ],
					"vscroll" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 812.0, 691.400000035762787, 165.0, 22.0 ],
					"text" : "jit.matrix input 1 float32 12 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 1008.0, 691.400000035762787, 121.0, 22.0 ],
					"text" : "jit.matrix probabilities"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 816.0, 750.400000035762787, 211.0, 22.0 ],
					"text" : "jit.la.mult"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 152.0, 53.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 214.0, 53.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"cols" : 24,
					"colwidth" : 33,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"hscroll" : 0,
					"id" : "obj-61",
					"maxclass" : "jit.cellblock",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "list", "", "", "" ],
					"patching_rect" : [ 152.0, 146.0, 203.0, 158.000001728534698 ],
					"rows" : 12,
					"vscroll" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 152.0, 116.600000023841858, 203.0, 22.0 ],
					"text" : "jit.matrix probabilities 1 float32 24 12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"linecount" : 25,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 61.0, 47.0, 66.0, 342.0 ],
					"text" : "index : key\n0 : C\n1: C#\n2: D\n3: D#\n4: E\n5: F\n6: F#\n7: G\n8: G#\n9: A\n10: A#\n11: B\n12: c\n13: c#\n14: d\n15: d#\n16: e\n17: f\n18: f#\n19: g\n20: g#\n21: a\n22: a#\n23: b"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"order" : 1,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"order" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 1 ],
					"midpoints" : [ 229.5, 618.0, 180.5, 618.0 ],
					"source" : [ "obj-111", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"order" : 0,
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"order" : 1,
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 1 ],
					"order" : 0,
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"order" : 1,
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 1 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 1 ],
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 0 ],
					"source" : [ "obj-141", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 1 ],
					"source" : [ "obj-161", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-168", 0 ],
					"source" : [ "obj-163", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 0 ],
					"source" : [ "obj-168", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-168", 1 ],
					"source" : [ "obj-170", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-161", 0 ],
					"source" : [ "obj-172", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-182", 0 ],
					"source" : [ "obj-172", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"source" : [ "obj-182", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-161", 0 ],
					"source" : [ "obj-183", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"source" : [ "obj-183", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"source" : [ "obj-183", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 0 ],
					"source" : [ "obj-184", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"order" : 0,
					"source" : [ "obj-192", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"order" : 1,
					"source" : [ "obj-192", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-193", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-193", 0 ],
					"source" : [ "obj-197", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 1 ],
					"midpoints" : [ 520.5, 616.0, 471.5, 616.0 ],
					"source" : [ "obj-21", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 1 ],
					"order" : 1,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"order" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 0 ],
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-192", 0 ],
					"order" : 1,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"order" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-34", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-36", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"order" : 1,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"order" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"order" : 0,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"order" : 2,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 1 ],
					"order" : 3,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"order" : 4,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"order" : 1,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-49", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-55", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-56", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-183", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"order" : 0,
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"order" : 1,
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 1 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 1 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"order" : 0,
					"source" : [ "obj-92", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"order" : 1,
					"source" : [ "obj-92", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"order" : 1,
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"order" : 0,
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"order" : 0,
					"source" : [ "obj-94", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"order" : 1,
					"source" : [ "obj-94", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"order" : 0,
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 1,
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 1 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "rbfi.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "analyzer~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "fiddle~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "sigmund~.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"boxgroups" : [ 			{
				"boxes" : [ "obj-167", "obj-163" ]
			}
 ],
		"styles" : [ 			{
				"name" : "newobjYellow-1",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "numberGold-1",
				"default" : 				{
					"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
