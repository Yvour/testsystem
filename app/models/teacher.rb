class Teacher < TestSystemUser
 #Support for calling #default_scope without a block is removed. For example instead of `default_scope where(color: 'red')`, please use `default_scope { where(color: 'red') }`. (Alternatively you can just redefine self.default_scope.)
 default_scope {where(accesslevel: 2)}
 
  
  def to_label
    "#{firstname} #{middlename} #{lastname}"
  end
end
