function d = teste_Code_2(lat1,lat2,lon1,lon2)
            r_earth=6371000.0 ;
            
            lat1_rad=lat1*pi/180;
            lat2_rad=lat2*pi/180;
            dif_lat=(lat2-lat1)*pi/180;
            dif_lon=(lon2-lon1)*pi/180;
            
            a=sin(dif_lat/2)*sin(dif_lat/2) + cos(lat1_rad)*cos(lat2_rad)*sin(dif_lon/2)*sin(dif_lon/2);
            c= 2* atan2(sqrt(a), sqrt(1-a));
            
            d=r_earth*c; 
end
