{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 2,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 323.0, 77.0, 858.0, 492.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Lato Light",
		"gridonopen" : 1,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 2,
		"objectsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 2,
		"toptoolbarpinned" : 2,
		"righttoolbarpinned" : 2,
		"bottomtoolbarpinned" : 2,
		"toolbars_unpinned_last_save" : 15,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "tap",
		"subpatcher_template" : "tap.template",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-164",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 440.0, 585.0, 29.5, 23.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 815.0, 275.0, 474.0, 52.0 ],
					"text" : "load /Users/maurizioberta/Desktop/berta_informatica_2_esame/ddsp_pretrained_saxophone/ddsp_demo_pretrained.ts"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-159",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 540.0, 610.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 875.0, 190.0, 363.0, 64.0 ],
					"text" : "Per migliorare l'audio, è possibile fare una lista bach. \nAd ogni bang si aggiunge una nota alla posizione in cui ci si trova nel brano con l'altezza corrente. \nAlla fine del play la lista viene cancellata."
				}

			}
, 			{
				"box" : 				{
					"attr" : "maxfreq",
					"id" : "obj-95",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 675.0, 610.0, 425.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-87",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 445.0, 455.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 2,
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
						"subpatcher_template" : "tap.template",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-60",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 50.0, 160.0, 38.0, 23.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 825.0, 340.0, 38.0, 23.0 ],
									"text" : "gate~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 135.0, 31.0, 23.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 825.0, 315.0, 31.0, 23.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 100.0, 137.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 855.0, 280.0, 137.0, 23.0 ],
									"text" : "if $f1 < 20. then 0 else 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-67",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 62.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-69",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 97.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-71",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 132.0, 40.0, 30.0, 30.0 ]
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
									"patching_rect" : [ 50.0, 243.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-73",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 85.0, 243.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"order" : 1,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"order" : 0,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 1 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 145.0, 200.0, 83.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p volume_gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 540.0, 575.0, 41.0, 23.0 ],
					"text" : "edge~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "" ],
					"patching_rect" : [ 365.0, 650.0, 473.0, 23.0 ],
					"text" : "/Volumes/MacintoshHD/Users/LudovicoBerta/Downloads/sigmund~/mac/sigmund~.mxo"
				}

			}
, 			{
				"box" : 				{
					"attr" : "unit",
					"id" : "obj-52",
					"lock" : 1,
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 925.0, 91.0, 253.0, 23.0 ],
					"text_width" : 68.0
				}

			}
, 			{
				"box" : 				{
					"attr" : "maxfreq",
					"id" : "obj-20",
					"lock" : 1,
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 925.0, 68.0, 253.0, 23.0 ],
					"text_width" : 68.0
				}

			}
, 			{
				"box" : 				{
					"attr" : "minfreq",
					"id" : "obj-21",
					"lock" : 1,
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 925.0, 45.0, 253.0, 23.0 ],
					"text_width" : 68.0
				}

			}
, 			{
				"box" : 				{
					"attr" : "algorithm",
					"id" : "obj-22",
					"lock" : 1,
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 925.0, 114.5, 253.0, 23.0 ],
					"text_width" : 68.0
				}

			}
, 			{
				"box" : 				{
					"attr" : "fftsettings",
					"displaymode" : 3,
					"id" : "obj-24",
					"lock" : 1,
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 925.0, 137.5, 253.0, 23.0 ],
					"text_width" : 68.0
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "list", "" ],
					"patching_rect" : [ 145.0, 115.0, 73.0, 24.0 ],
					"text" : "fluid.pitch~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 145.0, 445.0, 130.0, 23.0 ],
					"text" : "hirt.convolutionreverb~",
					"varname" : "hirt.convolutionreverb~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 425.0, 485.0, 41.0, 23.0 ],
					"text" : "*~ 0.5"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "/Users/maurizioberta/Desktop/berta_informatica_2_esame/singing.mp3",
								"filename" : "singing.mp3",
								"filekind" : "audiofile",
								"id" : "u474010304",
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1
								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-40",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 510.0, 265.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "metric",
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 775.0, 390.0, 278.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "fftsettings",
					"displaymode" : 3,
					"fontsize" : 12.0,
					"id" : "obj-37",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 783.0, 511.0, 278.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "minslicelength",
					"fontsize" : 12.0,
					"id" : "obj-51",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 775.0, 435.0, 152.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "threshold",
					"fontsize" : 12.0,
					"id" : "obj-53",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 775.0, 415.0, 153.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "framedelta",
					"fontsize" : 12.0,
					"id" : "obj-56",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 780.0, 485.0, 151.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"patching_rect" : [ 540.0, 546.0, 96.0, 23.0 ],
					"text" : "fluid.onsetslice~",
					"varname" : "onsets"
				}

			}
, 			{
				"box" : 				{
					"attr" : "filtersize",
					"fontsize" : 12.0,
					"id" : "obj-70",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 778.0, 460.0, 151.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 775.0, 365.0, 191.0, 21.0 ],
					"text" : "experiment with your own settings",
					"textcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 145.0, 155.0, 60.0, 23.0 ],
					"text" : "unpack f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 390.0, 130.0, 465.0, 78.0 ],
					"text" : "DDSP wrapper for Max MSP;\nTone Transfer.\nLoad your pretrained model; \nPreprocess input audio to get better results, by adding a click on edges. \nPass two signals to the model: pitch and loudness."
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"forceaspect" : 1,
					"id" : "obj-13",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 390.0, 10.0, 465.0, 99.606557377049185 ],
					"pic" : "ddsp.png"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 145.0, 510.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "",
					"clip_size" : 1,
					"display_range" : [ -70.0, 30.0 ],
					"id" : "obj-9",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"orientation" : 1,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 145.0, 350.0, 147.0, 47.0 ],
					"prototypename" : "M4L.live.gain~.H.extended",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 30.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "Gain",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 195.0, 245.0, 29.0, 23.0 ],
					"text" : "sig~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 145.0, 225.0, 29.0, 23.0 ],
					"text" : "sig~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.0, 10.0, 340.0, 52.0 ],
					"text" : "load /Volumes/MacintoshHD/Users/LudovicoBerta/Developement/git/ddsp_pretrained_violin/ddsp_debug_pretrained.ts"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 145.0, 290.0, 70.0, 24.0 ],
					"text" : "me.ddsp~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-163", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-164", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"midpoints" : [ 154.5, 331.5, 282.5, 331.5 ],
					"order" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 154.5, 331.5, 154.5, 331.5 ],
					"order" : 1,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 934.5, 102.5, 154.5, 102.5 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 934.5, 91.0, 154.5, 91.0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 934.5, 147.5, 544.5, 147.5, 544.5, 104.0, 154.5, 104.0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 934.5, 170.5, 544.5, 170.5, 544.5, 104.0, 154.5, 104.0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"midpoints" : [ 154.5, 146.5, 154.5, 146.5 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"midpoints" : [ 784.5, 479.0, 549.5, 479.0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"midpoints" : [ 792.5, 539.5, 549.5, 539.5 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"order" : 1,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"order" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 0 ],
					"order" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"midpoints" : [ 434.5, 552.376344323158264, 294.5, 552.376344323158264, 294.5, 119.0, 154.5, 119.0 ],
					"order" : 1,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"source" : [ "obj-43", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 601.5, 683.0, 306.0, 683.0, 306.0, 234.0, 204.5, 234.0 ],
					"order" : 1,
					"source" : [ "obj-49", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 2 ],
					"midpoints" : [ 601.5, 683.0, 315.0, 683.0, 315.0, 184.0, 218.5, 184.0 ],
					"order" : 0,
					"source" : [ "obj-49", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 1 ],
					"midpoints" : [ 154.5, 258.0, 170.5, 258.0, 170.5, 189.0, 186.5, 189.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"midpoints" : [ 784.5, 501.5, 549.5, 501.5 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 934.5, 124.0, 544.5, 124.0, 544.5, 104.0, 154.5, 104.0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"midpoints" : [ 784.5, 491.5, 549.5, 491.5 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"midpoints" : [ 789.5, 526.5, 549.5, 526.5 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"midpoints" : [ 204.5, 278.5, 205.5, 278.5 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-159", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 1 ],
					"order" : 1,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"order" : 0,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"midpoints" : [ 787.5, 514.0, 549.5, 514.0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-74", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 1 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 1 ],
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 684.5, 641.0, 374.5, 641.0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-43::obj-10" : [ "Damp Active", "Active", 0 ],
			"obj-43::obj-108::obj-90" : [ "number", "number", 0 ],
			"obj-43::obj-11" : [ "Modulation Active", "Active", 0 ],
			"obj-43::obj-14" : [ "Position Active", "Active", 0 ],
			"obj-43::obj-1::obj-1::obj-12::obj-70" : [ "hirt.val[6]", "hirt.val", 0 ],
			"obj-43::obj-1::obj-1::obj-44::obj-70" : [ "hirt.val[5]", "hirt.val", 0 ],
			"obj-43::obj-1::obj-1::obj-45::obj-70" : [ "hirt.val[4]", "hirt.val", 0 ],
			"obj-43::obj-1::obj-1::obj-46::obj-70" : [ "hirt.val[3]", "hirt.val", 0 ],
			"obj-43::obj-1::obj-1::obj-47::obj-70" : [ "hirt.val[2]", "hirt.val", 0 ],
			"obj-43::obj-1::obj-1::obj-48::obj-70" : [ "hirt.val[1]", "hirt.val", 0 ],
			"obj-43::obj-1::obj-1::obj-49" : [ "Length Mode", "Length Mode", 0 ],
			"obj-43::obj-1::obj-1::obj-53" : [ "Direct Mode", "Direct Mode", 0 ],
			"obj-43::obj-1::obj-1::obj-9" : [ "Reverse", "Reverse", 0 ],
			"obj-43::obj-1::obj-1::obj-97::obj-70" : [ "hirt.val", "hirt.val", 0 ],
			"obj-43::obj-1::obj-2::obj-100::obj-70" : [ "hirt.val[13]", "hirt.val", 0 ],
			"obj-43::obj-1::obj-2::obj-101::obj-70" : [ "hirt.val[10]", "hirt.val", 0 ],
			"obj-43::obj-1::obj-2::obj-36::obj-70" : [ "hirt.val[8]", "hirt.val", 0 ],
			"obj-43::obj-1::obj-2::obj-79::obj-70" : [ "hirt.val[14]", "hirt.val", 0 ],
			"obj-43::obj-1::obj-2::obj-81::obj-70" : [ "hirt.val[11]", "hirt.val", 0 ],
			"obj-43::obj-1::obj-2::obj-88::obj-70" : [ "hirt.val[9]", "hirt.val", 0 ],
			"obj-43::obj-1::obj-2::obj-92::obj-70" : [ "hirt.val[15]", "hirt.val", 0 ],
			"obj-43::obj-1::obj-2::obj-96::obj-70" : [ "hirt.val[12]", "hirt.val", 0 ],
			"obj-43::obj-1::obj-2::obj-99::obj-70" : [ "hirt.val[7]", "hirt.val", 0 ],
			"obj-43::obj-24::obj-1::obj-28::obj-70" : [ "hirt.val[17]", "hirt.val", 0 ],
			"obj-43::obj-24::obj-1::obj-29::obj-70" : [ "hirt.val[16]", "hirt.val", 0 ],
			"obj-43::obj-24::obj-2::obj-25" : [ "Widen", "Widen", 0 ],
			"obj-43::obj-24::obj-2::obj-29::obj-70" : [ "hirt.val[18]", "hirt.val", 0 ],
			"obj-43::obj-24::obj-2::obj-49" : [ "Type", "Type", 0 ],
			"obj-43::obj-24::obj-2::obj-8::obj-70" : [ "hirt.val[19]", "hirt.val", 0 ],
			"obj-43::obj-28" : [ "PATCH/PRESS", "PATCH/PRESS", 0 ],
			"obj-43::obj-31::obj-17::obj-70" : [ "hirt.val[28]", "hirt.val", 0 ],
			"obj-43::obj-31::obj-19::obj-70" : [ "hirt.val[27]", "hirt.val", 0 ],
			"obj-43::obj-31::obj-21" : [ "EQ Routing", "Active", 0 ],
			"obj-43::obj-31::obj-22::obj-70" : [ "hirt.val[26]", "hirt.val", 0 ],
			"obj-43::obj-31::obj-50::obj-70" : [ "hirt.val[25]", "hirt.val", 0 ],
			"obj-43::obj-31::obj-51::obj-70" : [ "hirt.val[24]", "hirt.val", 0 ],
			"obj-43::obj-31::obj-53::obj-70" : [ "hirt.val[23]", "hirt.val", 0 ],
			"obj-43::obj-31::obj-54::obj-70" : [ "hirt.val[22]", "hirt.val", 0 ],
			"obj-43::obj-31::obj-55::obj-70" : [ "hirt.val[21]", "hirt.val", 0 ],
			"obj-43::obj-31::obj-56::obj-70" : [ "hirt.val[20]", "hirt.val", 0 ],
			"obj-43::obj-36::obj-114::obj-35" : [ "Drop A", "live.drop", 3 ],
			"obj-43::obj-36::obj-114::obj-65" : [ "Drop B", "live.drop", 3 ],
			"obj-43::obj-36::obj-131::obj-10" : [ "Category Menu", "Category Menu", 0 ],
			"obj-43::obj-36::obj-131::obj-11" : [ "IR Menu", "IR Menu", 0 ],
			"obj-43::obj-36::obj-49" : [ "Select IR", "Select", 0 ],
			"obj-43::obj-36::obj-53" : [ "Mode IR", "Mode", 0 ],
			"obj-43::obj-3::obj-59::obj-70" : [ "hirt.val[33]", "hirt.val", 0 ],
			"obj-43::obj-3::obj-62::obj-70" : [ "hirt.val[29]", "hirt.val", 0 ],
			"obj-43::obj-3::obj-63::obj-70" : [ "hirt.val[30]", "hirt.val", 0 ],
			"obj-43::obj-3::obj-64::obj-70" : [ "hirt.val[31]", "hirt.val", 0 ],
			"obj-43::obj-3::obj-65::obj-70" : [ "hirt.val[32]", "hirt.val", 0 ],
			"obj-43::obj-5" : [ "Realtime Tabs", "Realtime", 0 ],
			"obj-43::obj-79" : [ "Offline Tabs", "Offline", 0 ],
			"obj-43::obj-8" : [ "Shape Active", "Active", 0 ],
			"obj-9" : [ "live.gain~", "Gain", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-43::obj-1::obj-1::obj-12::obj-70" : 				{
					"parameter_exponent" : 2.5,
					"parameter_initial" : 15000.0,
					"parameter_invisible" : 1,
					"parameter_longname" : "hirt.val[6]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 100.0, 30000.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 2
				}
,
				"obj-43::obj-1::obj-1::obj-44::obj-70" : 				{
					"parameter_exponent" : 2.0,
					"parameter_initial" : 0.0,
					"parameter_invisible" : 1,
					"parameter_longname" : "hirt.val[5]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0.0, 1000.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 2
				}
,
				"obj-43::obj-1::obj-1::obj-45::obj-70" : 				{
					"parameter_exponent" : 2.0,
					"parameter_initial" : 0.0,
					"parameter_invisible" : 1,
					"parameter_longname" : "hirt.val[4]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0.0, 1000.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 2
				}
,
				"obj-43::obj-1::obj-1::obj-46::obj-70" : 				{
					"parameter_exponent" : 1.0,
					"parameter_initial" : 100.0,
					"parameter_invisible" : 1,
					"parameter_longname" : "hirt.val[3]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0.0, 100.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 5
				}
,
				"obj-43::obj-1::obj-1::obj-47::obj-70" : 				{
					"parameter_exponent" : 1.0,
					"parameter_initial" : 100.0,
					"parameter_invisible" : 1,
					"parameter_longname" : "hirt.val[2]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0.0, 100.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 5
				}
,
				"obj-43::obj-1::obj-1::obj-48::obj-70" : 				{
					"parameter_exponent" : 1.58,
					"parameter_initial" : 100.0,
					"parameter_invisible" : 1,
					"parameter_longname" : "hirt.val[1]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 50.0, 200.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 5
				}
,
				"obj-43::obj-1::obj-1::obj-97::obj-70" : 				{
					"parameter_exponent" : 1.01,
					"parameter_initial" : 100.0,
					"parameter_invisible" : 1,
					"parameter_modmode" : 0,
					"parameter_range" : [ 1.0, 200.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 5
				}
,
				"obj-43::obj-1::obj-2::obj-100::obj-70" : 				{
					"parameter_exponent" : 4.0,
					"parameter_initial" : 1000.0,
					"parameter_invisible" : 1,
					"parameter_longname" : "hirt.val[13]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 30.0, 18000.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 3
				}
,
				"obj-43::obj-1::obj-2::obj-101::obj-70" : 				{
					"parameter_exponent" : 4.0,
					"parameter_initial" : 8000.0,
					"parameter_invisible" : 1,
					"parameter_longname" : "hirt.val[10]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 30.0, 18000.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 3
				}
,
				"obj-43::obj-1::obj-2::obj-36::obj-70" : 				{
					"parameter_exponent" : 1.189901,
					"parameter_initial" : 100.0,
					"parameter_invisible" : 1,
					"parameter_longname" : "hirt.val[8]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 20.0, 200.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 5
				}
,
				"obj-43::obj-1::obj-2::obj-79::obj-70" : 				{
					"parameter_exponent" : 1.189901,
					"parameter_initial" : 100.0,
					"parameter_invisible" : 1,
					"parameter_longname" : "hirt.val[14]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 20.0, 200.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 5
				}
,
				"obj-43::obj-1::obj-2::obj-81::obj-70" : 				{
					"parameter_exponent" : 1.189901,
					"parameter_initial" : 100.0,
					"parameter_invisible" : 1,
					"parameter_longname" : "hirt.val[11]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 20.0, 200.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 5
				}
,
				"obj-43::obj-1::obj-2::obj-88::obj-70" : 				{
					"parameter_exponent" : 1.0,
					"parameter_initial" : 1.0,
					"parameter_invisible" : 1,
					"parameter_longname" : "hirt.val[9]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0.05, 2.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 1
				}
,
				"obj-43::obj-1::obj-2::obj-92::obj-70" : 				{
					"parameter_exponent" : 1.0,
					"parameter_initial" : 0.707107,
					"parameter_invisible" : 1,
					"parameter_longname" : "hirt.val[15]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0.05, 2.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 1
				}
,
				"obj-43::obj-1::obj-2::obj-96::obj-70" : 				{
					"parameter_exponent" : 1.0,
					"parameter_initial" : 1.0,
					"parameter_invisible" : 1,
					"parameter_longname" : "hirt.val[12]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0.05, 2.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 1
				}
,
				"obj-43::obj-1::obj-2::obj-99::obj-70" : 				{
					"parameter_exponent" : 4.0,
					"parameter_initial" : 125.0,
					"parameter_invisible" : 1,
					"parameter_longname" : "hirt.val[7]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 30.0, 18000.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 3
				}
,
				"obj-43::obj-24::obj-1::obj-28::obj-70" : 				{
					"parameter_exponent" : 1.0,
					"parameter_initial" : 0.0,
					"parameter_invisible" : 0,
					"parameter_longname" : "hirt.val[17]",
					"parameter_modmode" : 0,
					"parameter_range" : [ -100.0, 100.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 5
				}
,
				"obj-43::obj-24::obj-1::obj-29::obj-70" : 				{
					"parameter_exponent" : 1.0,
					"parameter_initial" : 0.0,
					"parameter_invisible" : 0,
					"parameter_longname" : "hirt.val[16]",
					"parameter_modmode" : 0,
					"parameter_range" : [ -50.0, 50.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 6
				}
,
				"obj-43::obj-24::obj-2::obj-29::obj-70" : 				{
					"parameter_exponent" : 1.0,
					"parameter_initial" : 1.0,
					"parameter_invisible" : 0,
					"parameter_longname" : "hirt.val[18]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0.05, 2.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 3
				}
,
				"obj-43::obj-24::obj-2::obj-8::obj-70" : 				{
					"parameter_exponent" : 1.0,
					"parameter_initial" : 50.0,
					"parameter_invisible" : 0,
					"parameter_longname" : "hirt.val[19]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0.0, 100.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 5
				}
,
				"obj-43::obj-31::obj-17::obj-70" : 				{
					"parameter_exponent" : 3.0,
					"parameter_initial" : 0.5,
					"parameter_invisible" : 0,
					"parameter_longname" : "hirt.val[28]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0.05, 18.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 10
				}
,
				"obj-43::obj-31::obj-19::obj-70" : 				{
					"parameter_exponent" : 1.0,
					"parameter_initial" : 0.0,
					"parameter_invisible" : 0,
					"parameter_longname" : "hirt.val[27]",
					"parameter_modmode" : 0,
					"parameter_range" : [ -18.0, 18.0 ],
					"parameter_type" : 0,
					"parameter_units" : " ",
					"parameter_unitstyle" : 4
				}
,
				"obj-43::obj-31::obj-22::obj-70" : 				{
					"parameter_exponent" : 4.0,
					"parameter_initial" : 125.0,
					"parameter_invisible" : 0,
					"parameter_longname" : "hirt.val[26]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 10.0, 18000.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 3
				}
,
				"obj-43::obj-31::obj-50::obj-70" : 				{
					"parameter_exponent" : 3.0,
					"parameter_initial" : 0.707107,
					"parameter_invisible" : 0,
					"parameter_longname" : "hirt.val[25]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0.05, 18.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 10
				}
,
				"obj-43::obj-31::obj-51::obj-70" : 				{
					"parameter_exponent" : 1.0,
					"parameter_initial" : 0.0,
					"parameter_invisible" : 0,
					"parameter_longname" : "hirt.val[24]",
					"parameter_modmode" : 0,
					"parameter_range" : [ -18.0, 18.0 ],
					"parameter_type" : 0,
					"parameter_units" : " ",
					"parameter_unitstyle" : 4
				}
,
				"obj-43::obj-31::obj-53::obj-70" : 				{
					"parameter_exponent" : 4.0,
					"parameter_initial" : 1000.0,
					"parameter_invisible" : 0,
					"parameter_longname" : "hirt.val[23]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 10.0, 18000.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 3
				}
,
				"obj-43::obj-31::obj-54::obj-70" : 				{
					"parameter_exponent" : 3.0,
					"parameter_initial" : 0.5,
					"parameter_invisible" : 0,
					"parameter_longname" : "hirt.val[22]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0.05, 18.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 10
				}
,
				"obj-43::obj-31::obj-55::obj-70" : 				{
					"parameter_exponent" : 1.0,
					"parameter_initial" : 0.0,
					"parameter_invisible" : 0,
					"parameter_longname" : "hirt.val[21]",
					"parameter_modmode" : 0,
					"parameter_range" : [ -18.0, 18.0 ],
					"parameter_type" : 0,
					"parameter_units" : " ",
					"parameter_unitstyle" : 4
				}
,
				"obj-43::obj-31::obj-56::obj-70" : 				{
					"parameter_exponent" : 4.0,
					"parameter_initial" : 8000.0,
					"parameter_invisible" : 0,
					"parameter_longname" : "hirt.val[20]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 10.0, 18000.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 3
				}
,
				"obj-43::obj-3::obj-59::obj-70" : 				{
					"parameter_exponent" : 2.0,
					"parameter_initial" : 0.0,
					"parameter_invisible" : 0,
					"parameter_longname" : "hirt.val[33]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0.0, 200.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 2
				}
,
				"obj-43::obj-3::obj-62::obj-70" : 				{
					"parameter_exponent" : 1.0,
					"parameter_initial" : 0.0,
					"parameter_invisible" : 0,
					"parameter_longname" : "hirt.val[29]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0.0, 100.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 5
				}
,
				"obj-43::obj-3::obj-63::obj-70" : 				{
					"parameter_exponent" : 1.0,
					"parameter_initial" : 100.0,
					"parameter_invisible" : 0,
					"parameter_longname" : "hirt.val[30]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0.0, 100.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 5
				}
,
				"obj-43::obj-3::obj-64::obj-70" : 				{
					"parameter_exponent" : 1.0,
					"parameter_initial" : 0.0,
					"parameter_invisible" : 0,
					"parameter_longname" : "hirt.val[31]",
					"parameter_modmode" : 0,
					"parameter_range" : [ -20.0, 20.0 ],
					"parameter_type" : 0,
					"parameter_units" : " ",
					"parameter_unitstyle" : 4
				}
,
				"obj-43::obj-3::obj-65::obj-70" : 				{
					"parameter_exponent" : 1.0,
					"parameter_initial" : 50.0,
					"parameter_invisible" : 0,
					"parameter_longname" : "hirt.val[32]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0.0, 100.0 ],
					"parameter_type" : 0,
					"parameter_unitstyle" : 5
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "HIRT_HISSTools_Logo.png",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/misc/HIRT_image",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/misc/HIRT_image",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "bufresample~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bufreverse~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ddsp.png",
				"bootpath" : "~/Documents/Max 8/Packages/me/help",
				"patcherrelativepath" : ".",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "fluid.onsetslice~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "fluid.pitch~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "hirt.buffer.filter.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt.convolutionreverb~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt.convolvestereo~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt.convrvrb.realtime~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt.damping.cascade.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt.dial.linear.only.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt.dial.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt.size.resample.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt.svfcoeff.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_base_name.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_convolution_rt_library.genexpr",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/code",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/code",
				"type" : "GenX",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_convrvrb_clientlist_alias.txt",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_convrvrb_rt_part1.gendsp",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/code",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_convrvrb_rt_part3.gendsp",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/code",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_convrvrb_rt_part5.gendsp",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/code",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_cr_info_view.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_data_colls.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_eq.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_eq_library.genexpr",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/code",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/code",
				"type" : "GenX",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_file_check.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_file_ir_display.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_file_loading.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_file_picker.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_file_set.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_filter_type.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_folder.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_gain_and_display.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_gain_params.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_interface_damp.js",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/jsui",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/jsui",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_interface_eq.js",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/jsui",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/jsui",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_interface_mod.js",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/jsui",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/jsui",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_interface_pos.js",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/jsui",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/jsui",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_ir.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_loading_scheme.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_nan_fix.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_output.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_partition_copy_buffers.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_partition_early.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_partition_fix_length.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_partition_late.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_size_resample_feed.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_tab_damp.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_tab_modulation.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_tab_position.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_tab_shape.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_tabs_offline.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_tabs_realtime.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/patchers/HIRT_reverb/HIRT_reverb_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hirt_zoom_factor.js",
				"bootpath" : "~/Documents/Max 8/Packages/HISSTools Impulse Response Toolbox (HIRT)/javascript",
				"patcherrelativepath" : "../../HISSTools Impulse Response Toolbox (HIRT)/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "iraverage~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ircropfade~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "irdisplay~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "irmix~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "irstats~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "irtrimnorm~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "me.ddsp~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "morphfilter~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "multiconvolve~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "sigmund~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "singing.mp3",
				"bootpath" : "~/Desktop/berta_informatica_2_esame",
				"patcherrelativepath" : "../../../../../Desktop/berta_informatica_2_esame",
				"type" : "Mp3",
				"implicit" : 1
			}
, 			{
				"name" : "spectrumdraw~.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "max6box",
				"default" : 				{
					"accentcolor" : [ 0.8, 0.839216, 0.709804, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.5 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "max6inlet",
				"default" : 				{
					"color" : [ 0.423529, 0.372549, 0.27451, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "max6message",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
						"color2" : [ 0.788235, 0.788235, 0.788235, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "max6box",
				"multi" : 0
			}
, 			{
				"name" : "max6outlet",
				"default" : 				{
					"color" : [ 0.0, 0.454902, 0.498039, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "tap",
				"default" : 				{
					"fontname" : [ "Lato Light" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
