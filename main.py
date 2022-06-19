import datetime
from fastapi import FastAPI
import string
from random import sample

app = FastAPI(title="My API")

@app.get("/api/time")
def time_now():
    now = datetime.datetime.now()
    return {"full_time" : str(now),
            "year" : now.year,
            "month" : now.month,
            "day" : now.day,
            "minute" : now.minute,
            "second" : now.second,
            "microsecond" : now.microsecond
    }

@app.get("/api/pswd")
def pswd_gen(length: int = 8):
    chars = string.ascii_letters + string.digits
    length = length
    return {
    "pswd" : ''.join(sample(chars,length))
    }
