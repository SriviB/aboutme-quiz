def calc_res(point_total)
    if point_total == 24
        return "Besties!"
    elsif point_total > 20 && point_total < 24
        return "Friends!"
    elsif point_total > 15 && point_total < 20
        return "We're okay..."
    elsif point_total > 10 && point_total < 15
        return "Meh..."
    elsif point_total > 5 && point_total < 10
        return "We're not friends."
    elsif >=0 && point_total < 5
        return "I don't even know you!"
    end
end