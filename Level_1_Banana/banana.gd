extends Area2D

# Variabel untuk menyimpan target yang akan diikuti
var target_to_follow: Node2D = null

func _process(delta):
	# Cek apakah kita sudah punya target untuk diikuti
	if target_to_follow != null:
		# Update posisi X agar sama dengan target
		global_position.x = target_to_follow.global_position.x
		
		# Jika ingin gerakan lebih mulus (optional), bisa pakai lerp:
		# global_position.x = lerp(global_position.x, target_to_follow.global_position.x, 10 * delta)

func _on_scan_area_body_entered(body: Node2D) -> void:
	if body.name == "Father":
		print("Father ditemukan, mulai mengikuti...")
		# Simpan referensi body (Father) ke variabel target
		target_to_follow = body
