module ApplicationHelper
  def bikeshare_name(bikeshare_program: @bikeshare_program)
    bikeshare_program&.name.to_s
  end
end
