# frozen_string_literal: true

require 'rspec'
require_relative '../lib/main'

RSpec.describe 'Encryption Methods' do
  describe '#capitalization' do
    context 'when old letter is capitalized' do
      context 'when new letter is lowercase' do
        it 'returns capitalized new letter' do
          expect(capitalization('A', 'b')).to eql('B')
        end
      end
      context 'when new letter is uppercase' do
        it 'returns capitalized new letter' do
          expect(capitalization('A', 'B')).to eql('B')
        end
      end
    end
    context 'when old letter is not capitalized' do
      context 'when new letter is lowercase' do
        it 'returns lowercase new letter' do
          expect(capitalization('b', 'a')).to eql('a')
        end
      end
      context 'when new letter is uppercase' do
        it 'returns lowercase new letter' do
          expect(capitalization('b', 'A')).to eql('a')
        end
      end
    end
  end
  describe '#encrypt' do
    context 'when given a letter' do
      it 'shifts the letter index by 5' do
        expect(encrypt('a', 5)).to eql('f')
      end
    end
    context 'when given a letter at end of alphabet' do
      it 'wraps around to beginning' do
        expect(encrypt('y', 5)).to eql('d')
      end
    end
    context 'when given a long sentence' do
      it 'keeps spacing, capitalization, and punctuation' do
        expect(encrypt('What a stRing!', 5)).to eql('Bmfy f xyWnsl!')
      end
    end
  end
end
