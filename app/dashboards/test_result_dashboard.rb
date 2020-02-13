require "administrate/base_dashboard"

class TestResultDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    tool: Field::BelongsTo,
    id: Field::Number,
    date: Field::String,
    benchmark: Field::String,
    sat: Field::Number,
    unsat: Field::Number,
    unknown: Field::Number,
    timeout: Field::Number,
    exception: Field::Number,
    misc: Field::Number,
    commit: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :tool,
    :date,
    :benchmark
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :tool,
    :benchmark,
    :date,
    :sat,
    :unsat,
    :timeout,
    :misc,
    :commit,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :tool,
    :date,
    :sat,
    :unsat,
    :unknown,
    :timeout,
    :exception,
    :misc,
    :benchmark,
    :commit,
  ].freeze

  # Overwrite this method to customize how test results are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(test_result)
  #   "TestResult ##{test_result.id}"
  # end
end
