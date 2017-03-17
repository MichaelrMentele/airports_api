class Airport < ActiveRecord::Base
  # Assuming imperial units for radius (miles)
  def self.nearby(lat, long, radius)
    sql = <<-SQL
      SELECT *, point(#{long}, #{lat}) <@> point(longitude, latitude) AS airport_distance
      FROM airports
      WHERE (point(#{long}, #{lat}) <@> point(longitude, latitude)) < #{radius}
      ORDER BY airport_distance;
    SQL
    self.find_by_sql(sql)
  end
end
