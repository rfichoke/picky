module Picky

  class Indexes

    #
    #
    class Index

      attr_reader :combinator

      delegate :load_from_cache,
               :analyze,
               :reindex,
               :possible_combinations,
               :to => :categories

      alias reload load_from_cache

      # Define how the results of this index are identified.
      # (Shown in the client, for example)
      #
      # Default is the name of the index.
      #
      # TODO Spec.
      #
      def result_identifier result_identifier = nil
        result_identifier ? define_key_format(result_identifier) : (@result_identifier || @name)
      end
      def define_result_identifier result_identifier
        @result_identifier = result_identifier
      end

    end

  end

end