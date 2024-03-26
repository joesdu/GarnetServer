#See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/runtime:9.0-preview AS base
USER app
WORKDIR /app
EXPOSE 3278

FROM mcr.microsoft.com/dotnet/sdk:9.0-preview AS build
ARG BUILD_CONFIGURATION=Release
WORKDIR /src
COPY ["GarnetServer/GarnetServer.csproj", "GarnetServer/"]
RUN dotnet restore "./GarnetServer/GarnetServer.csproj"
COPY . .
WORKDIR "/src/GarnetServer"
RUN dotnet build "./GarnetServer.csproj" -c $BUILD_CONFIGURATION -o /app/build

FROM build AS publish
ARG BUILD_CONFIGURATION=Release
RUN dotnet publish "./GarnetServer.csproj" -c $BUILD_CONFIGURATION -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "GarnetServer.dll", "--config-import-path", "./garnet.conf"]