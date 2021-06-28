ip_address=`ecs-cli ps | grep $1 | grep /app | awk '{print $3}' | awk -F':' '{print $1}' | head -n 1`

instance_id=$(aws ec2 describe-instances --filters "Name=private-ip-address,Values=$ip_address" --query 'Reservations[].Instances[0].InstanceId' | tr -d '["\n ]')

aws ssm start-session --target $instance_id
