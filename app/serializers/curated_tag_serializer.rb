# == Schema Information
#
# Table name: curated_tags
#
#  id           :uuid             not null, primary key
#  context      :string(190)
#  lock_version :integer
#  name         :string(190)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  idx_tagname_on_context  (name,context) UNIQUE
#
class CuratedTagSerializer
  include JSONAPI::Serializer

  attributes :name, :id, :context, :lock_version
end
