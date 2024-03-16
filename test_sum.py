import unittest
from sum import sum

class TestSum(unittest.TestCase):

    def test_sum_positive_numbers(self):
        self.assertEqual(sum(1, 2), 3)  # Sửa giá trị kỳ vọng để kiểm tra lỗi

    def test_sum_negative_numbers(self):
        self.assertEqual(sum(-1, -2), -3, "Should be -3")

    def test_sum_mixed_numbers(self):
        self.assertEqual(sum(-1, 2), 1, "Should be 1")

if __name__ == '__main__':
    unittest.main()

