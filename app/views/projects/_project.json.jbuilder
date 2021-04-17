json.extract! project, :id, :title, :description, :short_desc, :demo_video, :slug, :created_at, :updated_at
json.url project_url(project, format: :json)
