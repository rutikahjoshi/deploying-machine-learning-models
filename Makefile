NAME=fidelity-machine-learning-dep
COMMIT_ID=$(shell git rev-parse HEAD)


build-ml-api-heroku:
	docker build --build-arg PIP_EXTRA_INDEX_URL=https://AbojBJCtTT5EyGmXknWy@pypi.fury.io/rutikahjoshi/ -t registry.heroku.com/fidelity-machine-learning-dep/web:latest .

push-ml-api-heroku:
	docker push registry.heroku.com/fidelity-machine-learning-dep/web:latest
