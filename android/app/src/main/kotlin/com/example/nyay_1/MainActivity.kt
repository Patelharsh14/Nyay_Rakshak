import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import com.example.nyay_1.databinding.ActivityMainBinding
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity(){
    private lateinit var binding: ActivityMainBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        // Access views using binding
        binding.textView.text = "Hello, World!"
    }
}
