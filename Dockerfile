FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1
#不生成.pyc文件
#Python 运行时默认会把代码编译成 .pyc 文件，存在 __pycache__ 目录里，用来加快下次启动速度。
ENV PYTHONUNBUFFERED=1
#让Python日志直接输出到终端，方便docker logs查看

WORKDIR /app

COPY app/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY app/ .

RUN useradd -m appuser

USER appuser

EXPOSE 5000

CMD ["python", "app.py"]
