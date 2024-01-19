FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS build
WORKDIR /Back-End

COPY . .
RUN dotnet restore

RUN dotnet build -c Release -o /app/build

FROM build AS publish
RUN dotnet publish -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS final
WORKDIR /app
EXPOSE 80

COPY --from=publish /app/publish .

# Set the entry point for the application
ENTRYPOINT ["dotnet", "ReCapProject.dll"]
