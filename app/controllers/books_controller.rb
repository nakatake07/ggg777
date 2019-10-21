class BooksController < ApplicationController
  def index
  	# Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する。
  	@book = Book.new
  	@books = Book.all
end

def show
	@book = Book.find(params[:id])
end

def root

end

def edit
	@book = Book.find(params[:id])
end

def update
	book = Book.find(params[:id])
	book.update(book_params)
	redirect_to book_path(book.id)
end



def create
	#ストロングパラメーターを使用
	@book = Book.new(book_params)
	  #データベースへ保存する
  if @book.save
  #指定されたページへ飛ぶ
  	redirect_to book_path(@book)
  else
  	@books=Book.all
  	render 'index'
  end
end

def destroy
	book = Book.find(params[:id])
	book.destroy
	redirect_to books_path
end

private

def book_params
	params.require(:book).permit(:title, :body)
end

end
