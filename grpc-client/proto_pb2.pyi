from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Optional as _Optional

DESCRIPTOR: _descriptor.FileDescriptor

class ExportLogsRequest(_message.Message):
    __slots__ = []
    def __init__(self) -> None: ...

class ExportLogsResponse(_message.Message):
    __slots__ = ["FilePath"]
    FILEPATH_FIELD_NUMBER: _ClassVar[int]
    FilePath: str
    def __init__(self, FilePath: _Optional[str] = ...) -> None: ...
