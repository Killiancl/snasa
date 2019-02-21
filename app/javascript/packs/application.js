import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

import { initPicker } from '../plugins/init_picker';

import { initPickerEnd } from '../plugins/init_picker';

initMapbox();

initPicker();

initPickerEnd();
