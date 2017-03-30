// parallax


layer_x("bg_cumulus_close",camera_get_view_x( view_camera[0]) *.2);
layer_y("bg_cumulus_close",(camera_get_view_y( view_camera[0])/1.5));

layer_x("bg_hills",camera_get_view_x( view_camera[0]) *.4);
layer_y("bg_hills",(camera_get_view_y( view_camera[0])/2.5)+440);

layer_x("bg_cumulus_distant",camera_get_view_x( view_camera[0]) *.6);
layer_y("bg_cumulus_distant",(camera_get_view_y( view_camera[0])/1.25));

layer_x("bg_distant_clouds",camera_get_view_x( view_camera[0]) *.8);
layer_y("bg_distant_clouds",(camera_get_view_y( view_camera[0])/1.05));

layer_x("bg_ground",camera_get_view_x( view_camera[0]) *.4);
layer_y("bg_ground",(camera_get_view_y( view_camera[0])/2.5)+550);