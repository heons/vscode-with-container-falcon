import unittest
from app.helper import helper_func1

class TestHelper(unittest.TestCase):
    def setUp(self):
        pass

    def test_helper_func1(self):
        str_compare = "helper_func1"
        result = helper_func1()

        self.assertEqual(str_compare, result)
        