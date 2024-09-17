import rand

const ddsk = ['ドド', 'スコ']
const love = 'ドドスコスコスコ'.repeat(3)

fn main() {
	mut ddsk_buffer := []string{len: 12, cap: 12, init: ''}
	for {
		current_ddsk := rand.element(ddsk)!
		
		ddsk_buffer.drop(1)
		ddsk_buffer << current_ddsk
		
		print(current_ddsk)
		
		if ddsk_buffer.join('') == love {
			println('ラブ注入♡')
			return
		}
	}
}
