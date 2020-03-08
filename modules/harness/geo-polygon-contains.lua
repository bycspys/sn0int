-- Description: demonstrate geofencing with polygons
-- Version: 0.1.0
-- License: GPL-3.0

function run()
    hamburg = {
        { lat=53.63975308945899,  lon=9.764785766601562  },
        { lat=53.59494998253459,  lon=9.827270507812     },
        { lat=53.663153974456456, lon=9.9151611328125    },
        { lat=53.65582987649682,  lon=9.976272583007812  },
        { lat=53.68613523817129,  lon=9.992752075195312  },
        { lat=53.68674518938816,  lon=10.051460266113281 },
        { lat=53.72495117617815,  lon=10.075492858886719 },
        { lat=53.71946627930625,  lon=10.118408203125    },
        { lat=53.743635083157756, lon=10.164413452148438 },
        { lat=53.73104466704585,  lon=10.202865600585938 },
        { lat=53.676781546441546, lon=10.16304016113281  },
        { lat=53.632832079199474, lon=10.235824584960938 },
        { lat=53.608803292930894, lon=10.2008056640625   },
        { lat=53.578646152866504, lon=10.208358764648438 },
        { lat=53.57212285981298,  lon=10.163726806640625 },
        { lat=53.52071674896369,  lon=10.18707275390625  },
        { lat=53.52643162253097,  lon=10.224151611328125 },
        { lat=53.44062753992289,  lon=10.347747802734375 },
        { lat=53.38824275010831,  lon=10.248870849609375 },
        { lat=53.38824275010831,  lon=10.15960693359375  },
        { lat=53.44635321212876,  lon=10.064849853515625 },
        { lat=53.40595029739904,  lon=9.985198974609375  },
        { lat=53.42385506057106,  lon=9.951210021972656  },
        { lat=53.41843327091211,  lon=9.944171905517578  },
        { lat=53.41812635648326,  lon=9.927349090576172  },
        { lat=53.412294561442884, lon=9.917736053466797  },
        { lat=53.41464783813818,  lon=9.901256561279297  },
        { lat=53.443490472483326, lon=9.912586212158201  },
        { lat=53.45177144115704,  lon=9.897651672363281  },
        { lat=53.43633277935392,  lon=9.866924285888672  },
        { lat=53.427639673754776, lon=9.866409301757812  },
        { lat=53.427639673754776, lon=9.858856201171875  },
        { lat=53.46710230573499,  lon=9.795513153076172  },
        { lat=53.49039461941655,  lon=9.795341491699219  },
        { lat=53.49029248806277,  lon=9.77903366088867   },
        { lat=53.49856433088649,  lon=9.780235290527344  },
        { lat=53.5078554643033,   lon=9.758434295654297  },
        { lat=53.545407634092975, lon=9.759807586669922  },
        { lat=53.568147234570084, lon=9.633293151855469  },
        { lat=53.58802162343514,  lon=9.655780792236328  },
        { lat=53.568351121879815, lon=9.727706909179688  },
        { lat=53.60921067445695,  lon=9.737663269042969  },
    }

    points = {
        {
            name='Alice',
            lat=52.52437,
            lon=13.41053,
        }, {
            name='Bob',
            lat=53.551085,
            lon=9.993682,
        }, {
            name='Charlie',
            lat=40.726662,
            lon=-74.036677,
        }
    }

    for i=1, #points do
        if geo_polygon_contains(hamburg, points[i]) then
            info('[INSIDE ] ' .. points[i]['name'])
        else
            info('[OUTSIDE] ' .. points[i]['name'])
        end
    end
end