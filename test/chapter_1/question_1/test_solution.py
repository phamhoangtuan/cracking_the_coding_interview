from code.chapter_1.question_1 import is_unique


def test_none_string():
	result = is_unique(None)
	assert result is False


def test_empty_string():
	result = is_unique('')
	assert result is False


def test_no_unique_characters():
	result = is_unique('abcdefabc')
	assert result is False


def test_unique_characters():
	result = is_unique('abcdef')
	assert result is True
