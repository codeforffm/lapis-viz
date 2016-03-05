
function pcontains(mx, my,points)
    local i, j = #points, #points
    local oddNodes = false

    for i=1, #points do
        if ((points[i].y < my and points[j].y >= my
                or points[j].y< my and points[i].y>=my) and (points[i].x<=mx
                or points[j].x<=mx)) then
                if (points[i].x+(my-points[i].y)/(points[j].y-points[i].y)*(points[j].x-points[i].x)<mx) then
                        oddNodes = not oddNodes
                end
        end
        j = i
    end

    return oddNodes
end
