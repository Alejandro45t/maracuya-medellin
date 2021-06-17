function dts= dtstep(n)
    dts = 1 * (floor(n) == n) .* (n >= 0);;
end