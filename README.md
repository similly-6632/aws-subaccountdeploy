# Sub account deploy

## Trust Policy in destination account

{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "Statement1",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::424777534080:root"
            },
            "Action": "sts:AssumeRole"
        }
    ]
}

or

{
	"Version": "2012-10-17",
	"Statement": [
		{
			"Sid": "Statement1",
			"Effect": "Allow",
			"Principal": {
				"AWS": [
				    "arn:aws:iam::424777534080:root",
				    "arn:aws:iam::424777534080:user/smtest",
				    "arn:aws:iam::424777534080:user/automagic"
				    ]
			},
			"Action": "sts:AssumeRole"
			
		}
	]
}

## 