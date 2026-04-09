"""Generate stats.json for cherry_data before training."""
import sys
sys.path.insert(0, "/home/za382/Isaac-GR00T")

# Register fr5 modality config
import examples.fr5.fr5_config  # noqa: F401

from gr00t.data.stats import main
from gr00t.data.types import EmbodimentTag
from pathlib import Path

main(
    dataset_path=Path("/home/za382/Isaac-GR00T/cherry_data"),
    embodiment_tag=EmbodimentTag.NEW_EMBODIMENT,
)
