from code.chapter_1.question_1 import is_unique


def test_none_string():
	result = is_unique(None)
	assert result is None
