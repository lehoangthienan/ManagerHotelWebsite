<?php include('header.php'); ?>
<?php include('slider.php'); ?>

<?php
if($_SERVER['REQUEST_METHOD'] === "POST"){
	$valuexnxx = $_POST['amount'];
	var_dump($valuexnxx);
}
	echo $ngayden;
	echo $ngaydi;
?>

<div class="row">
	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" id="left">
		<?php include('left.php'); ?>
	</div>
	<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9" id="center">
		<div class="box_center">
			<div class="box_center_top">
				<div class="box_center_top_l"><p>Danh sách phòng khách sạn</p></div>
				<div class="box_center_top_r"></div>
				<div class="clearfix"></div>	
			</div>

			<div class="box_center_main">
				
				<div class="row">
					<?php
						//đặt số bản ghi cần hiện thị
						$limit=5;
						//xác định vị trí bắt đầu
						if(isset($_GET['s']) && filter_var($_GET['s'],FILTER_VALIDATE_INT,array('min_range'=>1)))
						{
							$start=$_GET['s'];
						}
						else
						{
							$start=0;
						}
						if(isset($_GET['p']) && filter_var($_GET['p'],FILTER_VALIDATE_INT,array('min_range'=>1)))
						{
							$per_page=$_GET['p'];
						}
						else
						{
							//Nếu p không có, thì sẽ truy vấn CSDL để tìm xem có bao nhiêu page
							$query_pg="SELECT COUNT(phong.MaP) FROM phong WHERE TenP LIKE '%{$tukhoa}%'";
							$results_pg=mysqli_query($dbc,$query_pg);
							kt_query($results_pg,$query_pg);
							list($record)=mysqli_fetch_array($results_pg,MYSQLI_NUM);
							if($record > $limit)
							{
								$per_page=ceil($record / $limit);
							}
							else
							{
								$per_page=1;
							}
						}

						$query="SELECT * FROM phong,khachsan WHERE phong.MaKS=khachsan.MaKS and TenP LIKE '%{$tukhoa}%' ORDER BY phong.MaP DESC LIMIT {$start},{$limit}";
						$results=mysqli_query($dbc,$query);
						kt_query($results,$query);
						while($sanpham=mysqli_fetch_array($results,MYSQLI_ASSOC))
						{
						?>
						<a href="chitietphong.php?MaP=<?php echo $sanpham['MaP'];?>">
						<div class="item-phong hvr-box-shadow-outset">
						<div class="image-phong ">
						
							<div class="sanpham_box">
								<a href="chitietphong.php?MaP=<?php echo $sanpham['MaP'];?>" class="sanpham_box_img"><img class="image1" src="<?php echo $sanpham['urlAnh']; ?>"></a>
							</div>
						</div>
						<div class="thong-tin-phong">
							<a href="chitietphong.php?MaP=<?php echo $sanpham['MaP'];?>" class="sanpham_box_name sanpham_box_id<?php echo $sanpham['id']; ?>" id="<?php echo $sanpham['id']; ?>"><?php echo $sanpham['TenP']; ?></a>
							</br>
							<span class="ten-ks"><?php echo $sanpham['TenKS']; ?></span>
							</br>
							<?php $sosao = (int)$sanpham['SoSao'];
							for ($i=1; $i <= $sosao; $i++)
							{
							?>
								<span class="fa fa-star checked"></span>
							<?php
							}
							for ($i=$sosao;$i<5;$i++)
							{
							?>
								<span class="fa fa-star"></span>
							<?php
							}
							?>
							</br>
							<i class="fa fa-location-arrow dia-chi"></i>&nbsp;<span class="dia-chi"><?php echo $sanpham['DiaChi']; ?></span>
								<div class="tien-ich clearfix">
									<div class="float-right">
										</br>
										<p class="sanpham_box_gia">&nbsp;<?php echo number_format($sanpham['Gia'],0,'.','.')?>
										</p>
										<a href="chitietphong.php?MaP=<?php echo $sanpham['MaP'];?>" class="sanpham_box_order" id="addcart<?php echo $sanpham['id']; ?>">Xem Chi Tiết</a>
									</div>
									<div class="float-left"> 
									<span class="tien-ich-text">Tiện ích</span>
										</br>
										<?php $bs = (int)$sanpham['BuaSang'];
										if($bs==1)
										{
										?>
										<i class="fa fa-cutlery"></i>&nbsp;<span>Bữa sáng miễn phí</span>
										<?php
										}
										?>
										</br>
									<?php $wf = (int)$sanpham['Wifi'];
									if($wf==1)
									{
									?>
									<i class="fa fa-wifi"></i>&nbsp;<span>Wifi free</span>
									<?php
									}
									?>
									</br>
									<?php $tp = (int)$sanpham['ChinhSachHuyPhong'];
									if($tp==1)
									{
									?>
									<i class="fa fa-window-close-o"></i>&nbsp;<span>Chính sách hủy phòng</span>
									<?php
									}
									?>
									</br>
									</div>
								</div>
						</div>
						</div>
					</a>
						<?php
						/*<a href="sanphamchitiet.php?id=<?php echo $sanpham['id'];?>">
						<div class="sanpham_box">
								<div class="sanpham_box_img_container">
									<img src="<?php echo $sanpham['urlAnh']; ?>"/>
								</div>
								<div class="sanpham_box_detail">
									<div href="" class="sanpham_box_name sanpham_box_id<?php echo $sanpham['MaP']; ?>" id="<?php echo $sanpham['MaP']; ?>"><?php echo $sanpham['TenP']; ?></div>
									<div href="" class="sanpham_box_noidung sanpham_box_id<?php echo $sanpham['MaP']; ?>" id="<?php echo $sanpham['MaP']; ?>"><?php echo $sanpham['LoaiP']; ?></div>

									<div class="sanpham_box_bottom">
										<div class="sanpham_box_gia">Giá:&nbsp;<?php echo number_format($sanpham['Gia'],0,'.','.'); ?></div>
										<a class="sanpham_box_order" id="addcart<?php echo $sanpham['MaP']; ?>">Thêm vào giỏ hàng</a>
									</div>
								</div>
						</div>
						</a>*/
						?>
						<script type="text/javascript">
							$(document).ready(function(){
								$("#addcart<?php echo $sanpham['id']; ?>").click(function(){
									var id=$(".sanpham_box_id<?php echo $sanpham['id']; ?>").attr('id');
									$.ajax({
										type: "POST",
										url: "addcart.php",
										data: {id : id},
										cache:false,
										success:function(results){
											alert("Sản phẩm đã được thêm vào giỏ hàng");
											window.location.reload();	
										}
									});
								});
							});
						</script>
						<?php
						}
						echo "<ul class='pagination'>";
						if($per_page > 1)
						{
							$current_page=($start / $limit) + 1;
							//Nếu không phải trang đầu thì hiện thị trang trước
							if($current_page !=1)
							{
								echo "<li><a href='index.php?s=".($start-$limit)."&p={$per_page}'>Back</a></li>";
							}
							//hiện thị những phần còn lại của trang
							for ($i=1; $i <= $per_page ; $i++) 
							{ 
								if($i!=$current_page)
								{
									echo "<li><a href='index.php?s=".($limit*($i-1))."&p={$per_page}'>{$i}</a></li>";
								}
								else
								{
									echo "<li class='active'><a>{$i}</a></li>";
								}
							}
							//Nếu không phải trang cuối thì hiện thị nút next
							if($current_page !=$per_page)
							{
								echo "<li><a href='index.php?s=".($start+$limit)."&p={$per_page}'>Next</a></li>";
							}
						}
						echo "</ul>";
					?>
				</div>
			</div>
		</div>
	</div>
</div>
<?php include('footer.php'); ?>