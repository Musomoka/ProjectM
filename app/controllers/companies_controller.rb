class CompaniesController < InheritedResources::Base

  private

    def company_params
      params.require(:company).permit(:name, :year_end, :tax_number, :address_1, :address_2, :address_3, :address_44)
    end
end

