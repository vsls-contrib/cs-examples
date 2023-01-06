import grpc
import proto_pb2
import proto_pb2_grpc

print("Starting client and sending request")

with grpc.insecure_channel('unix:///workspaces/.codespaces/shared/cs-agent.sock') as channel:
    stub = proto_pb2_grpc.CodespaceHostStub(channel, metadata)
    metadata = (('Authorization', 'Bearer token'))
    response = stub.ExportLogsAsync(request=proto_pb2.ExportLogsRequest(), metadata=metadata)

print("Received " + response.FilePath)