function kml_add_overlay(fid,imname,min1,max1,min2,max2)
%add the overlay to the file descriptor fid
fprintf(fid,['<GroundOverlay>\n<name>' ...
             'GridOverlayName</name>\n<description>\n</' ...
             'description>\n<color>c0ffffff</color>\n' ...
             '<Region>\n'...
             '<Lod>\n'...
             '<minLodPixels>100</minLodPixels>\n'...
             '<minFadeExtent>-1</minFadeExtent>\n'...
             '<maxLodPixels>-1</maxLodPixels>\n'...
             '<maxFadeExtent>-1</maxFadeExtent>\n'...
             '</Lod>\n'...
             '<LatLonAltBox>\n<north>' ...
             '%f</north>\n<south>%f</south>\n<east>' ...
             '%f</east>\n<west>%f</west>\n</' ...
             'LatLonAltBox>\n</Region>'...
             '<Icon>\n<href>%s</href>\n</Icon>\n' ...
             '<LatLonBox>\n<north>' ...
             '%f</north>\n<south>%f</south>\n<east>' ...
             '%f</east>\n<west>%f</west>\n</' ...
             'LatLonBox>\n'...
             '</GroundOverlay>\n'], ...
        max1,min1,max2,min2,...
        imname,...
        max1,min1,max2,min2);
