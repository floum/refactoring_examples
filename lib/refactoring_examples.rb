require "refactoring_examples/version"
require 'refactoring_examples/extract_method1'
require 'refactoring_examples/extract_method2'
require 'refactoring_examples/inline_method1'
require 'refactoring_examples/inline_temp1'
require 'refactoring_examples/replace_temp_with_query1'
require 'refactoring_examples/replace_temp_with_chain_select'
require 'refactoring_examples/introduce_explaining_variable'
require 'refactoring_examples/split_temporary_variable'
require 'refactoring_examples/remove_parameter_assignment'

module RefactoringExamples
  # Your code goes here...
end

include ExtractMethod
include InlineMethod
include InlineTemp
include ReplaceTempWithQuery
include ReplaceTempWithChain
include IntroduceExplainingVariable
include SplitTemporaryVariable
include RemoveParameterAssignment

