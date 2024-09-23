# frozen_string_literal: true

# Module that can be included (mixin) to take and output TSV data
module TsvBuddy
  # Converts a String with TSV data into internal data structure @data
  # arguments: tsv - a String in TSV format
  # returns: nothing
  def take_tsv(tsv)
    @data = tsv.split("\n")[1..].map do |row|
      tsv_row_to_hash(row)
    end
  end

  # Converts @data into tsv string
  # arguments: none
  # returns: String in TSV format
  def to_tsv
    result = "date\tstudent_id\tlanguages\tbest_language\tapp_experience\ttech_experience\n"
    @data.each do |record|
      result += "#{record.values.join("\t")}\n"
    end
    result
  end
end

def tsv_row_to_hash(row)
  row = row.strip.split("\t")
  {
    'date' => row[0],
    'student_id' => row[1],
    'languages' => row[2],
    'best_language' => row[3],
    'app_experience' => row[4],
    'tech_experience' => row[5]
  }
end
