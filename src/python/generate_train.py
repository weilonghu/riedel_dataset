
test = set()

print('reading test data')
with open('../../data/test.txt', 'r') as f:
	while True:
		content = f.readline()
		if content == '':
			break
		content = content.strip().split('\t')
		pair = '{}#{}#{}'.format(content[2], content[6], content[3])
		test.add(pair)

print('reading train data')
with open('../../data/train1.txt', 'r') as f:
	with open('../../data/train.txt', 'w') as d:
		while True:
			content = f.readline()
			if content == '':
				break
			contents = content.strip().split('\t')
			pair = '{}#{}#{}'.format(contents[2], contents[6], contents[3])
			
			if pair not in test:
				d.write(content)

print('process done!')