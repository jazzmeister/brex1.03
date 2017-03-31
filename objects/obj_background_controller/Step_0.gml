// parallax


layer_x("bg_cumulus_close",camera_get_view_x( view_camera[0]) *.2);
layer_y("bg_cumulus_close",(camera_get_view_y( view_camera[0])/1.5));

layer_x("bg_distant_city1",camera_get_view_x( view_camera[0]) *.009);
//layer_y("bg_hills",(camera_get_view_y( view_camera[0])/2.5)+440);
layer_y("bg_distant_city1",(camera_get_view_y( view_camera[0])/5)+580);

layer_x("bg_distant_city2",camera_get_view_x( view_camera[0]) *.05);
layer_y("bg_distant_city2",(camera_get_view_y( view_camera[0])/10)+620);

layer_x("bg_cumulus_distant",camera_get_view_x( view_camera[0]) *.009);
layer_y("bg_cumulus_distant",(camera_get_view_y( view_camera[0])/1.25));

layer_x("bg_distant_clouds",camera_get_view_x( view_camera[0]) *.005);
layer_y("bg_distant_clouds",(camera_get_view_y( view_camera[0])/1.05));

layer_x("bg_city_close",camera_get_view_x( view_camera[0]) *.1);
