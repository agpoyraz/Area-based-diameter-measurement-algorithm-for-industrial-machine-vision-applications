%İnner diameter measurement algorithm based on area
%Ahmet Gökhan POYRAZ
%You can select th=250 
function [cap,maks,minn,egiklik] = ic_cap_optimized(BW,th)
    bw_th=BW > th;
    %you need to change bwareafilter thresholds for your applications
    middle_ic_cember = bwareafilt(bw_th,[500000 5000000]);
    stats = regionprops('table',middle_ic_cember,'Centroid','MajorAxisLength','MinorAxisLength','EquivDiameter','Eccentricity');
    maks = stats.MajorAxisLength;
    minn = stats.MinorAxisLength;
    egiklik = stats.Eccentricity;
    %diameters = mean([stats.MajorAxisLength stats.MinorAxisLength],2);
    cap = stats.EquivDiameter;
end