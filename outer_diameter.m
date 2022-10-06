%Outer diameter measurement algorithm based on area
%Ahmet Gökhan POYRAZ
%You can select th=250 
function [cap,maks,minn,egiklik] = outer_diameter(BW,th)
    bw_th=BW > th;
    stats2 = regionprops('table',imcomplement(bw_th),'FilledImage');
    boyutlar = zeros(numel(stats2),1);
    for i=1:numel(stats2)
        boyutlar(i) = size(stats2.FilledImage{i},1);
    end
    [index_ise_yaramayan,index] = maxk(boyutlar,2);
    stats = regionprops('table',stats2.FilledImage{index(1)},'Centroid','MajorAxisLength','MinorAxisLength','EquivDiameter','Eccentricity');
    stats.Eccentricity;

    maks = stats.MajorAxisLength;
    minn = stats.MinorAxisLength;
    egiklik = stats.Eccentricity;
    %diameters = mean([stats.MajorAxisLength stats.MinorAxisLength],2);
    cap = stats.EquivDiameter;

end