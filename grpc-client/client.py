import grpc
import proto_pb2
import proto_pb2_grpc

print("Starting client and sending request")

with grpc.insecure_channel('unix:///workspaces/.codespaces/shared/cs-agent.sock') as channel:
    stub = proto_pb2_grpc.CodespaceHostStub(channel)
    response = stub.ExportLogsAsync(proto_pb2.ExportLogsRequest())

print("Received " + response.FilePath)