# Exercises

This project solves this two exercises:

## First Exercise

* Given an array of n integers where _n > 1_, `nums`, return an array `output` such that `output[i]` is equal to the product of all the elements of nums except `nums[i]`.

Usage: The `FirstExercise` class contains a class method called `solve`. This method receives an array as a parameter, and returns the solution of the exercise.

## Second Exercise

* Given a specific number (let's call it `n`) and an array of numbers (let's call it `numbers`) write some code that returns a Boolean, indicating if there is a pair of numbers in `numbers` that together add up to `n`.

Usage: The `SecondExercise` class contains a class method called `solve`. This method receives an array as the first parameter, an integer as the second, and returns a boolean according to the parameters of the exercise.

# Installation

## Ruby

Install Ruby interpreter. This project was tested using versions `1.9.3`, `2.0.0` and `2.1.2`. It is highly recommended to use a version manager, such as `rbenv`, where ruby can be easily installed by running `rbenv install ruby-VERSION`.

## Gems

Install gems to a local folder by running `bundle install --path=.bundle`. If the `bundle` command is not found, then install bundler by running `gem install bundler`.

## Tests

Unit tests can be run via `rspec spec`, or using `bin/rspec --format doc` for a prettier output format.
