#!/usr/bin/env ruby

require 'active_support/inflector'
require 'date'

weights = {
  saluhallen: 3,
  cental_station: 3,
  gustav_adolfs_torg: 2,
  lilla_torg: 2,
  grabrodersgatan: 2,
  stora_torget: 2,
  namdu: 1,
  mando: 1,
  tugg: 1,
  kyoto: 1,
  namu: 1,
  radhuskallaren: 1,
  niagara: 1
}

bag = weights.inject([]) { |a, (k, v)| a += [k] * v }
choice = bag.sample

# We can use this algorithm as well.
# It is a bit slower but it works with floating point weights:
# choice = weights.max_by { |(_, v)| rand ** (1.0 / v) }.first

puts "Today, #{Date.today}, you go to #{choice.to_s.humanize}!"
