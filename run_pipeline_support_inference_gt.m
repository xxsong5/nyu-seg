% Runs the segmentation pipeline followed by support inference on the
% ground truth (manually annotated) regions.

% Run the entire segmentation pipeline.
run_pipeline_segmentation;

% Creates ground-truth regions from the user-defined labels.
run_extract_regions_from_labels;

% Extracts SIFT features and create sparse codes for each one.
run_extract_sift_features;
run_create_dataset_rgbd_sift;
run_learn_sc_dict_from_sift;

% Extract features and train a classifier for structure-class prediction.
run_extract_structure_class_features_gt;
run_create_dataset_structure_class_features_gt;
run_train_structure_class_classifier_gt;

% % Extract features and train a classifier for local support prediction.
% run_extract_support_features_gt;
% run_create_dataset_support_features_gt;
% run_train_support_classifier_gt;
% 
% % Run baseline #1:
% run_train_floor_classifier_gt;
% run_support_inference_image_plane_rules_gt;
% 
% % Run baseline #2:
% run_support_inference_structure_class_rules_gt;
% 
% % Run baseline #3:
% run_support_inference_support_classifier_gt;
% 
% % Run the LP
% run_support_inference_lp_gt;
