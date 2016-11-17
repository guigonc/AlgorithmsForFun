defmodule PrimeNumberTest do
  use ExUnit.Case
  doctest PrimeNumber

  test "number 2 is prime" do
    assert PrimeNumber.prime?(2)
  end

  test "even numbers are not prime" do
    refute PrimeNumber.prime?(4)
    refute PrimeNumber.prime?(6)
    refute PrimeNumber.prime?(10)
    refute PrimeNumber.prime?(1000)
  end

  test "number 3 is prime" do
    assert PrimeNumber.prime?(3)
  end

  test "number 9 is not prime" do
    refute PrimeNumber.prime?(9)
  end

  test "number 11 is prime" do
    assert PrimeNumber.prime?(11)
  end

  test "number 1 is not prime" do
    refute PrimeNumber.prime?(1)
  end

  test "the 1st prime number is 2" do
    assert PrimeNumber.nth_prime(1) == 2
  end

  test "the 2nd prime number is 3" do
    assert PrimeNumber.nth_prime(2) == 3
  end

  test "the 3rd prime number is 5" do
    assert PrimeNumber.nth_prime(3) == 5
  end

  test "the 6th prime number is 13" do
    assert PrimeNumber.nth_prime(6) == 13
  end
end
