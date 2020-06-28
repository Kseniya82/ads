class AdRoutes < Application
  prepend PaginationLinks
  prepend Validations
  prepend ApiErrors

  get "v1" do
    page = params[:page].presence || 1
    ads = Ad.reverse_order(:updated_at)
    ads = ads.paginate(page.to_i, Settings.pagination.page_size)
    serializer = AdSerializer.new(ads.all, links: pagination_links(ads))

    JSON serializer.serializable_hash
  end

  post "v1" do
    ad_params = validate_with!(AdParamsContract)

    result = Ads::CreateService.call(
      ad: ad_params[:ad],
      user_id: params[:user_id]
    )

    if result.success?
      serializer = AdSerializer.new(result.ad)
      response.status = 201
      JSON serializer.serializable_hash
    else
      response.status = 422
      error_response result.ad
    end
  end
end
