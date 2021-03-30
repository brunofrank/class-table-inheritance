module InheritsMigration
  # Generate the association field.
  def create_table(table_name, options = {}, &block)
    options[:id] ||= false if options[:inherits]
    
    super(table_name, **options) do |table_defintion|
      if options[:inherits]
        if options[:inherits].kind_of?(String)
          column_to_create = options[:inherits].gsub(/::/, '_').downcase
          association_type = options[:inherits].constantize
        else
          column_to_create = options[:inherits]
          association_type = options[:inherits].to_s.classify.constantize 
        end        
        association_inst = association_type.send(:new)
        attr_column = association_inst.column_for_attribute(association_type.primary_key)
        
        field_option = {:primary_key => true, :null => false}
        field_option[:limit] = attr_column.limit if attr_column.limit                
        table_defintion.column "#{column_to_create}_id", attr_column.type, field_option
      end
      yield table_defintion  
    end 
  end  
end

ActiveRecord::ConnectionAdapters::SchemaStatements.prepend(InheritsMigration)
