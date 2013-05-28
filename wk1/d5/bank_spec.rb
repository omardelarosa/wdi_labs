require_relative 'Bank'

describe Bank do									#the class
	describe '#new' do								#the behavior
		it 'builds a new bank with a name' do		#the expectation of the behavior (a.k.a. specification)
			bank = Bank.new('MyCiti')
			bank.should be_instance_of Bank
			bank.name.should == 'MyCiti'
		end
	end

	describe '#open_account' do
		it 'opens a new account' do
			bank = Bank.new('MyCiti')
			account = bank.open_account('zlu')
			account[:name].should == 'zlu'
		end

		it 'has an initial balance' do
			bank = Bank.new('MyCiti')
			account = bank.open_account
		end
	end
end