export BITCOLI_UI_PORT="27618"
export BITCOLI_API_PORT="27619"
export BITCOLI_API_IP="10.21.21.89"

bitcoli_api_hidden_service_file="${EXPORTS_TOR_DATA_DIR}/app-${EXPORTS_APP_ID}-api/hostname"
if [ -s "${bitcoli_api_hidden_service_file}" ]; then
    export BITCOLI_API_HIDDEN_SERVICE="http://$(cat "${bitcoli_api_hidden_service_file}")"
else
    export BITCOLI_API_HIDDEN_SERVICE=""
fi
