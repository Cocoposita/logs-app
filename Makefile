run:
	docker run -d -p 3000:3000 -v logs:/app/data --rm --name logsapp logsapp:volumes

run-dev:
	docker run -p 3000:3000 -d --rm --name logsapp -v logs:/app/data -v /app/node_modules -v $(pwd):/app logsapp:volumes

stop:
	docker stop logsapp