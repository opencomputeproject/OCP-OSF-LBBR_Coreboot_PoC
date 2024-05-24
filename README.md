






<!DOCTYPE html>
<html class="ui-gray with-header with-top-bar " lang="en">
<head prefix="og: http://ogp.me/ns#">
<meta charset="utf-8">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="width=device-width, initial-scale=1" name="viewport">
<title>README.md · main · SystemReady / firmware-build / LinuxBoot / LBBR Coreboot PoC · GitLab</title>
<script nonce="XFA8CNxGBv5WujyejGrKvw==">
//<![CDATA[
window.gon={};gon.api_version="v4";gon.default_avatar_url="https://gitlab.arm.com/assets/no_avatar-849f9c04a3a0d0cea2424ae97b27447dc64a7dbfae83c036c45b403392f0e8ba.png";gon.max_file_size=10;gon.asset_host=null;gon.webpack_public_path="/assets/webpack/";gon.relative_url_root="";gon.user_color_scheme="white";gon.markdown_surround_selection=null;gon.markdown_automatic_lists=null;gon.math_rendering_limits_enabled=true;gon.recaptcha_api_server_url="https://www.recaptcha.net/recaptcha/api.js";gon.recaptcha_sitekey="";gon.gitlab_url="https://gitlab.arm.com";gon.revision="8d2bc7e01af";gon.feature_category="source_code_management";gon.gitlab_logo="/assets/gitlab_logo-2957169c8ef64c58616a1ac3f4fc626e8a35ce4eb3ed31bb0d873712f2a041a0.png";gon.secure=true;gon.sprite_icons="/assets/icons-33d285b77c0f9173f577e26a550fb6463b9913e368ebfcdbb54022aff27051db.svg";gon.sprite_file_icons="/assets/file_icons/file_icons-7cd3d6c3b29a6d972895f36472978a4b5adb4b37f9b5d0716a380e82389f7e0e.svg";gon.emoji_sprites_css_path="/assets/emoji_sprites-e1b1ba2d7a86a445dcb1110d1b6e7dd0200ecaa993a445df77a07537dbf8f475.css";gon.gridstack_css_path="/assets/lazy_bundles/gridstack-ff1d6ec7af9347a238856714421a749ddd3be71578bfd624fe2bc7fe23f6d35b.css";gon.test_env=false;gon.disable_animations=false;gon.suggested_label_colors={"#cc338b":"Magenta-pink","#dc143c":"Crimson","#c21e56":"Rose red","#cd5b45":"Dark coral","#ed9121":"Carrot orange","#eee600":"Titanium yellow","#009966":"Green-cyan","#8fbc8f":"Dark sea green","#6699cc":"Blue-gray","#e6e6fa":"Lavender","#9400d3":"Dark violet","#330066":"Deep violet","#36454f":"Charcoal grey","#808080":"Gray"};gon.first_day_of_week=0;gon.time_display_relative=true;gon.time_display_format=0;gon.ee=true;gon.jh=false;gon.dot_com=false;gon.uf_error_prefix="UF";gon.pat_prefix="";gon.keyboard_shortcuts_enabled=true;gon.diagramsnet_url="https://embed.diagrams.net";gon.features={"usageDataApi":true,"securityAutoFix":false,"sourceEditorToolbar":false,"vscodeWebIde":true,"keyContactsManagement":false,"removeMonitorMetrics":true,"customEmoji":true,"encodingLogsTree":false,"groupUserSaml":false,"duoChatCallout":true,"blobBlameInfo":true,"highlightJsWorker":true,"explainCodeChat":false};gon.roadmap_epics_limit=1000;gon.licensed_features={"fileLocks":true,"remoteDevelopment":true};
//]]>
</script>

<script nonce="XFA8CNxGBv5WujyejGrKvw==">
//<![CDATA[
var gl = window.gl || {};
gl.startup_calls = {"/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/blob/main/README.md?format=json\u0026viewer=rich":{}};
gl.startup_graphql_calls = [{"query":"query getBlobInfo(\n  $projectPath: ID!\n  $filePath: String!\n  $ref: String!\n  $refType: RefType\n  $shouldFetchRawText: Boolean!\n) {\n  project(fullPath: $projectPath) {\n    __typename\n    id\n    repository {\n      __typename\n      empty\n      blobs(paths: [$filePath], ref: $ref, refType: $refType) {\n        __typename\n        nodes {\n          __typename\n          id\n          webPath\n          name\n          size\n          rawSize\n          rawTextBlob @include(if: $shouldFetchRawText)\n          fileType\n          language\n          path\n          blamePath\n          editBlobPath\n          gitpodBlobUrl\n          ideEditPath\n          forkAndEditPath\n          ideForkAndEditPath\n          codeNavigationPath\n          projectBlobPathRoot\n          forkAndViewPath\n          environmentFormattedExternalUrl\n          environmentExternalUrlForRouteMap\n          canModifyBlob\n          canCurrentUserPushToBranch\n          archived\n          storedExternally\n          externalStorage\n          externalStorageUrl\n          rawPath\n          replacePath\n          pipelineEditorPath\n          simpleViewer {\n            fileType\n            tooLarge\n            type\n            renderError\n          }\n          richViewer {\n            fileType\n            tooLarge\n            type\n            renderError\n          }\n        }\n      }\n    }\n  }\n}\n","variables":{"projectPath":"systemready/firmware-build/linuxboot/lbbr-coreboot-poc","ref":"main","refType":"","filePath":"README.md","shouldFetchRawText":false}}];

if (gl.startup_calls && window.fetch) {
  Object.keys(gl.startup_calls).forEach(apiCall => {
   gl.startup_calls[apiCall] = {
      fetchCall: fetch(apiCall, {
        // Emulate XHR for Rails AJAX request checks
        headers: {
          'X-Requested-With': 'XMLHttpRequest'
        },
        // fetch won’t send cookies in older browsers, unless you set the credentials init option.
        // We set to `same-origin` which is default value in modern browsers.
        // See https://github.com/whatwg/fetch/pull/585 for more information.
        credentials: 'same-origin'
      })
    };
  });
}
if (gl.startup_graphql_calls && window.fetch) {
  const headers = {"X-CSRF-Token":"FjlVSxB_8nucno190-GYcf0UENwPdjkBFi5XKpeAABLKmDCUWxj5EJM2XnVvJV72O7xZWBhL7yqVVvT8l4-yYg","x-gitlab-feature-category":"source_code_management"};
  const url = `https://gitlab.arm.com/api/graphql`

  const opts = {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      ...headers,
    }
  };

  gl.startup_graphql_calls = gl.startup_graphql_calls.map(call => ({
    ...call,
    fetchCall: fetch(url, {
      ...opts,
      credentials: 'same-origin',
      body: JSON.stringify(call)
    })
  }))
}


//]]>
</script>

<link rel="prefetch" href="/assets/webpack/monaco.cea8837c.chunk.js">
<link rel="stylesheet" href="/assets/themes/theme_gray-120391728c18d5b0b427b5f7d471e5bb8312469737e535261019907c8c5b1c4f.css" />

<link rel="stylesheet" href="/assets/application-e357f1b1a6812a8e72a4aec06b3761062a281129d621bf2e580806a8fca6302d.css" media="all" />
<link rel="stylesheet" href="/assets/page_bundles/tree-a5089dc5ce426c5f11ae90f6dc4a5b0be7ec204192f87d6438b0500eaf370d7c.css" media="all" /><link rel="stylesheet" href="/assets/page_bundles/projects-cc9a44858264462e84f8adf7211e8b40d69959d1fac83e72332dbca14f05bb31.css" media="all" />
<link rel="stylesheet" href="/assets/application_utilities-2cbab288829ca99cf9e28ce29af9c76d5a1091f05c3809a6133dd8ccbbbf1ddf.css" media="all" />


<link rel="stylesheet" href="/assets/fonts-115c4704cb8c77e2fdf3fd0243eebf164e2e9b54bbab7bf6a4c14868b865ddf8.css" media="all" />
<link rel="stylesheet" href="/assets/highlight/themes/white-96f127bcbdab3caa86a6cc73183496a2fa61f5fdac1f3b410eaf990adbc6ea3b.css" media="all" />


<link rel="preload" href="/assets/application_utilities-2cbab288829ca99cf9e28ce29af9c76d5a1091f05c3809a6133dd8ccbbbf1ddf.css" as="style" type="text/css" nonce="8j4bWCXOQzLBgLgYBuwCag==">
<link rel="preload" href="/assets/application-e357f1b1a6812a8e72a4aec06b3761062a281129d621bf2e580806a8fca6302d.css" as="style" type="text/css" nonce="8j4bWCXOQzLBgLgYBuwCag==">
<link rel="preload" href="/assets/highlight/themes/white-96f127bcbdab3caa86a6cc73183496a2fa61f5fdac1f3b410eaf990adbc6ea3b.css" as="style" type="text/css" nonce="8j4bWCXOQzLBgLgYBuwCag==">





<script src="/assets/webpack/runtime.725edbf3.bundle.js" defer="defer" nonce="XFA8CNxGBv5WujyejGrKvw=="></script>
<script src="/assets/webpack/main.d4b121a2.chunk.js" defer="defer" nonce="XFA8CNxGBv5WujyejGrKvw=="></script>
<script src="/assets/webpack/commons-pages.search.show-super_sidebar.00d11c06.chunk.js" defer="defer" nonce="XFA8CNxGBv5WujyejGrKvw=="></script>
<script src="/assets/webpack/super_sidebar.95070a1e.chunk.js" defer="defer" nonce="XFA8CNxGBv5WujyejGrKvw=="></script>
<script src="/assets/webpack/commons-pages.groups.boards-pages.groups.details-pages.groups.epic_boards-pages.groups.show-pages.gr-50915c11.8d37907c.chunk.js" defer="defer" nonce="XFA8CNxGBv5WujyejGrKvw=="></script>
<script src="/assets/webpack/commons-pages.admin.runners.show-pages.clusters.agents.dashboard-pages.explore.catalog-pages.groups.-bd0c1c0d.207262fa.chunk.js" defer="defer" nonce="XFA8CNxGBv5WujyejGrKvw=="></script>
<script src="/assets/webpack/commons-pages.groups.security.policies.edit-pages.groups.security.policies.new-pages.projects.blob.s-b77fad0c.6544e843.chunk.js" defer="defer" nonce="XFA8CNxGBv5WujyejGrKvw=="></script>
<script src="/assets/webpack/commons-pages.admin.subscriptions.show-pages.groups.security.policies.edit-pages.groups.security.pol-6bfecbfa.51cf7905.chunk.js" defer="defer" nonce="XFA8CNxGBv5WujyejGrKvw=="></script>
<script src="/assets/webpack/102.b0a5d413.chunk.js" defer="defer" nonce="XFA8CNxGBv5WujyejGrKvw=="></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.show-pages.projects.snippets.show-pages.projects.tre-c684fcf6.b67d9d20.chunk.js" defer="defer" nonce="XFA8CNxGBv5WujyejGrKvw=="></script>
<script src="/assets/webpack/123.1d68aa18.chunk.js" defer="defer" nonce="XFA8CNxGBv5WujyejGrKvw=="></script>
<script src="/assets/webpack/commons-pages.groups.show-pages.projects.blob.show-pages.projects.show-pages.projects.tree.show.85e10e63.chunk.js" defer="defer" nonce="XFA8CNxGBv5WujyejGrKvw=="></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.show-pages.projects.tree.show.85b9e96b.chunk.js" defer="defer" nonce="XFA8CNxGBv5WujyejGrKvw=="></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.tree.show-treeList.92650165.chunk.js" defer="defer" nonce="XFA8CNxGBv5WujyejGrKvw=="></script>
<script src="/assets/webpack/pages.projects.blob.show.93a49645.chunk.js" defer="defer" nonce="XFA8CNxGBv5WujyejGrKvw=="></script>
<meta content="object" property="og:type">
<meta content="GitLab" property="og:site_name">
<meta content="README.md · main · SystemReady / firmware-build / LinuxBoot / LBBR Coreboot PoC · GitLab" property="og:title">
<meta content="Arm Open Source Software" property="og:description">
<meta content="https://gitlab.arm.com/assets/twitter_card-570ddb06edf56a2312253c5872489847a0f385112ddbcd71ccfa1570febab5d2.jpg" property="og:image">
<meta content="64" property="og:image:width">
<meta content="64" property="og:image:height">
<meta content="https://gitlab.arm.com/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/blob/main/README.md" property="og:url">
<meta content="summary" property="twitter:card">
<meta content="README.md · main · SystemReady / firmware-build / LinuxBoot / LBBR Coreboot PoC · GitLab" property="twitter:title">
<meta content="Arm Open Source Software" property="twitter:description">
<meta content="https://gitlab.arm.com/assets/twitter_card-570ddb06edf56a2312253c5872489847a0f385112ddbcd71ccfa1570febab5d2.jpg" property="twitter:image">

<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="Q8lWyXevA6slZAHDkyFrdSEk3J4n-m0g36-9PNIxOoyfaDMWPMgIwCrM0ssv5a3y54yVGjDHuwtc1x7q0j6I_A" />
<meta name="csp-nonce" content="XFA8CNxGBv5WujyejGrKvw==" />
<meta name="action-cable-url" content="/-/cable" />
<link href="/-/manifest.json" rel="manifest">
<link rel="icon" type="image/png" href="/uploads/-/system/appearance/favicon/1/logo2.png" id="favicon" data-original-href="/uploads/-/system/appearance/favicon/1/logo2.png" />
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/apple-touch-icon-b049d4bc0dd9626f31db825d61880737befc7835982586d015bded10b4435460.png" />
<link href="/search/opensearch.xml" rel="search" title="Search GitLab" type="application/opensearchdescription+xml">




<meta content="Arm Open Source Software" name="description">
<meta content="#333238" name="theme-color">
</head>

<body class="tab-width-8 gl-browser-chrome gl-platform-windows" data-find-file="/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/find_file/main" data-group="linuxboot" data-group-full-path="systemready/firmware-build/linuxboot" data-namespace-id="1049" data-page="projects:blob:show" data-page-type-id="main/README.md" data-project="lbbr-coreboot-poc" data-project-id="443">

<script nonce="XFA8CNxGBv5WujyejGrKvw==">
//<![CDATA[
gl = window.gl || {};
gl.client = {"isChrome":true,"isWindows":true};


//]]>
</script>



<header class="header-logged-out" data-testid="navbar">
<a class="gl-sr-only gl-accessibility" href="#content-body">Skip to content</a>
<div class="container-fluid">
<nav aria-label="Explore GitLab" class="header-logged-out-nav gl-display-flex gl-gap-3 gl-justify-content-space-between">
<div class="header-logged-out-logo gl-display-flex gl-align-items-center">
<span class="gl-sr-only">GitLab</span>
<a title="Homepage" id="logo" class="has-tooltip" aria-label="Homepage" href="/"><img class="brand-header-logo lazy" alt="" data-src="/uploads/-/system/appearance/header_logo/1/Arm_logo_blue_72LG.png" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" />
</a><div class="gl-display-flex gl-align-items-center">
</div>
</div>
<ul class="gl-list-style-none gl-p-0 gl-m-0 gl-display-flex gl-gap-3 gl-align-items-center gl-flex-grow-1">
<li class="header-logged-out-nav-item">
<a class="" href="/explore">Explore</a>
</li>
</ul>
<ul class="gl-list-style-none gl-p-0 gl-m-0 gl-display-flex gl-gap-3 gl-align-items-center gl-justify-content-end">
<li class="header-logged-out-nav-item">
<a href="/users/sign_in?redirect_to_referer=yes">Sign in</a>
</li>
</ul>
</nav>
</div>
</header>

<div class="layout-page page-with-super-sidebar">
<aside class="js-super-sidebar super-sidebar super-sidebar-loading" data-command-palette="{&quot;project_files_url&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/files/main?format=json&quot;,&quot;project_blob_url&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/blob/main&quot;}" data-force-desktop-expanded-sidebar="" data-root-path="/" data-sidebar="{&quot;is_logged_in&quot;:false,&quot;context_switcher_links&quot;:[{&quot;title&quot;:&quot;Explore&quot;,&quot;link&quot;:&quot;/explore&quot;,&quot;icon&quot;:&quot;compass&quot;}],&quot;current_menu_items&quot;:[{&quot;id&quot;:&quot;project_overview&quot;,&quot;title&quot;:&quot;LBBR Coreboot PoC&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:443,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-project&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;manage_menu&quot;,&quot;title&quot;:&quot;Manage&quot;,&quot;icon&quot;:&quot;users&quot;,&quot;avatar&quot;:null,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/activity&quot;,&quot;is_active&quot;:false,&quot;pill_count&quot;:null,&quot;items&quot;:[{&quot;id&quot;:&quot;activity&quot;,&quot;title&quot;:&quot;Activity&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/activity&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-project-activity&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;members&quot;,&quot;title&quot;:&quot;Members&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/project_members&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;labels&quot;,&quot;title&quot;:&quot;Labels&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/labels&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;plan_menu&quot;,&quot;title&quot;:&quot;Plan&quot;,&quot;icon&quot;:&quot;planning&quot;,&quot;avatar&quot;:null,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/issues&quot;,&quot;is_active&quot;:false,&quot;pill_count&quot;:null,&quot;items&quot;:[{&quot;id&quot;:&quot;project_issue_list&quot;,&quot;title&quot;:&quot;Issues&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/issues&quot;,&quot;pill_count&quot;:&quot;0&quot;,&quot;link_classes&quot;:&quot;shortcuts-issues has-sub-items&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;boards&quot;,&quot;title&quot;:&quot;Issue boards&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/boards&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-issue-boards&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;milestones&quot;,&quot;title&quot;:&quot;Milestones&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/milestones&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;iterations&quot;,&quot;title&quot;:&quot;Iterations&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/cadences&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;project_wiki&quot;,&quot;title&quot;:&quot;Wiki&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/wikis/home&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-wiki&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;requirements&quot;,&quot;title&quot;:&quot;Requirements&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/requirements_management/requirements&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;code_menu&quot;,&quot;title&quot;:&quot;Code&quot;,&quot;icon&quot;:&quot;code&quot;,&quot;avatar&quot;:null,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/merge_requests&quot;,&quot;is_active&quot;:true,&quot;pill_count&quot;:null,&quot;items&quot;:[{&quot;id&quot;:&quot;project_merge_request_list&quot;,&quot;title&quot;:&quot;Merge requests&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/merge_requests&quot;,&quot;pill_count&quot;:&quot;0&quot;,&quot;link_classes&quot;:&quot;shortcuts-merge_requests&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;files&quot;,&quot;title&quot;:&quot;Repository&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/tree/main&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-tree&quot;,&quot;is_active&quot;:true},{&quot;id&quot;:&quot;branches&quot;,&quot;title&quot;:&quot;Branches&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/branches&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;commits&quot;,&quot;title&quot;:&quot;Commits&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/commits/main?ref_type=heads&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-commits&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;tags&quot;,&quot;title&quot;:&quot;Tags&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/tags&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;graphs&quot;,&quot;title&quot;:&quot;Repository graph&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/network/main?ref_type=heads&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-network&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;compare&quot;,&quot;title&quot;:&quot;Compare revisions&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/compare?from=main\u0026to=main&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;project_snippets&quot;,&quot;title&quot;:&quot;Snippets&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/snippets&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-snippets&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;file_locks&quot;,&quot;title&quot;:&quot;Locked files&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/path_locks&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;build_menu&quot;,&quot;title&quot;:&quot;Build&quot;,&quot;icon&quot;:&quot;rocket&quot;,&quot;avatar&quot;:null,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/pipelines&quot;,&quot;is_active&quot;:false,&quot;pill_count&quot;:null,&quot;items&quot;:[{&quot;id&quot;:&quot;pipelines&quot;,&quot;title&quot;:&quot;Pipelines&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/pipelines&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-pipelines&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;jobs&quot;,&quot;title&quot;:&quot;Jobs&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/jobs&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-builds&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;pipeline_schedules&quot;,&quot;title&quot;:&quot;Pipeline schedules&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/pipeline_schedules&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-builds&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;test_cases&quot;,&quot;title&quot;:&quot;Test cases&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/quality/test_cases&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-test-cases&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;artifacts&quot;,&quot;title&quot;:&quot;Artifacts&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/artifacts&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-builds&quot;,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;deploy_menu&quot;,&quot;title&quot;:&quot;Deploy&quot;,&quot;icon&quot;:&quot;deployments&quot;,&quot;avatar&quot;:null,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/releases&quot;,&quot;is_active&quot;:false,&quot;pill_count&quot;:null,&quot;items&quot;:[{&quot;id&quot;:&quot;releases&quot;,&quot;title&quot;:&quot;Releases&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/releases&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-deployments-releases&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;packages_registry&quot;,&quot;title&quot;:&quot;Package Registry&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/packages&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-container-registry&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;container_registry&quot;,&quot;title&quot;:&quot;Container Registry&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/container_registry&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;operations_menu&quot;,&quot;title&quot;:&quot;Operate&quot;,&quot;icon&quot;:&quot;cloud-pod&quot;,&quot;avatar&quot;:null,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/environments&quot;,&quot;is_active&quot;:false,&quot;pill_count&quot;:null,&quot;items&quot;:[{&quot;id&quot;:&quot;environments&quot;,&quot;title&quot;:&quot;Environments&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/environments&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-environments&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;infrastructure_registry&quot;,&quot;title&quot;:&quot;Terraform modules&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/infrastructure_registry&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;monitor_menu&quot;,&quot;title&quot;:&quot;Monitor&quot;,&quot;icon&quot;:&quot;monitor&quot;,&quot;avatar&quot;:null,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/incidents&quot;,&quot;is_active&quot;:false,&quot;pill_count&quot;:null,&quot;items&quot;:[{&quot;id&quot;:&quot;incidents&quot;,&quot;title&quot;:&quot;Incidents&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/incidents&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;service_desk&quot;,&quot;title&quot;:&quot;Service Desk&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/issues/service_desk&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;analyze_menu&quot;,&quot;title&quot;:&quot;Analyze&quot;,&quot;icon&quot;:&quot;chart&quot;,&quot;avatar&quot;:null,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/value_stream_analytics&quot;,&quot;is_active&quot;:false,&quot;pill_count&quot;:null,&quot;items&quot;:[{&quot;id&quot;:&quot;cycle_analytics&quot;,&quot;title&quot;:&quot;Value stream analytics&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/value_stream_analytics&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-project-cycle-analytics&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;contributors&quot;,&quot;title&quot;:&quot;Contributor analytics&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/graphs/main?ref_type=heads&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;ci_cd_analytics&quot;,&quot;title&quot;:&quot;CI/CD analytics&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/pipelines/charts&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;repository_analytics&quot;,&quot;title&quot;:&quot;Repository analytics&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/graphs/main/charts&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-repository-charts&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;code_review&quot;,&quot;title&quot;:&quot;Code review analytics&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/analytics/code_reviews&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;issues&quot;,&quot;title&quot;:&quot;Issue analytics&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/analytics/issues_analytics&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;insights&quot;,&quot;title&quot;:&quot;Insights&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/insights/&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-project-insights&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;model_experiments&quot;,&quot;title&quot;:&quot;Model experiments&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/ml/experiments&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false}],&quot;separated&quot;:false}],&quot;current_context_header&quot;:&quot;Project&quot;,&quot;support_path&quot;:&quot;https://about.gitlab.com/get-help/&quot;,&quot;display_whats_new&quot;:false,&quot;whats_new_most_recent_release_items_count&quot;:2,&quot;whats_new_version_digest&quot;:&quot;ae8077b3a8781c118c10b869a06fb420228ee4fa00401fbb652cd88adf3b3bd9&quot;,&quot;show_version_check&quot;:null,&quot;gitlab_version&quot;:{&quot;major&quot;:16,&quot;minor&quot;:7,&quot;patch&quot;:7,&quot;suffix_s&quot;:&quot;&quot;},&quot;gitlab_version_check&quot;:null,&quot;search&quot;:{&quot;search_path&quot;:&quot;/search&quot;,&quot;issues_path&quot;:&quot;/dashboard/issues&quot;,&quot;mr_path&quot;:&quot;/dashboard/merge_requests&quot;,&quot;autocomplete_path&quot;:&quot;/search/autocomplete&quot;,&quot;search_context&quot;:{&quot;group&quot;:{&quot;id&quot;:1049,&quot;name&quot;:&quot;LinuxBoot&quot;,&quot;full_name&quot;:&quot;SystemReady / firmware-build / LinuxBoot&quot;},&quot;group_metadata&quot;:{&quot;issues_path&quot;:&quot;/groups/systemready/firmware-build/linuxboot/-/issues&quot;,&quot;mr_path&quot;:&quot;/groups/systemready/firmware-build/linuxboot/-/merge_requests&quot;},&quot;project&quot;:{&quot;id&quot;:443,&quot;name&quot;:&quot;LBBR Coreboot PoC&quot;},&quot;project_metadata&quot;:{&quot;mr_path&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/merge_requests&quot;,&quot;issues_path&quot;:&quot;/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/issues&quot;},&quot;code_search&quot;:true,&quot;ref&quot;:&quot;main&quot;,&quot;scope&quot;:null,&quot;for_snippets&quot;:null}},&quot;panel_type&quot;:&quot;project&quot;,&quot;shortcut_links&quot;:[{&quot;title&quot;:&quot;Snippets&quot;,&quot;href&quot;:&quot;/explore/snippets&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-snippets&quot;},{&quot;title&quot;:&quot;Groups&quot;,&quot;href&quot;:&quot;/explore/groups&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-groups&quot;},{&quot;title&quot;:&quot;Projects&quot;,&quot;href&quot;:&quot;/explore/projects&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-projects&quot;}]}"></aside>

<div class="content-wrapper">
<div class="mobile-overlay"></div>

<div class="alert-wrapper gl-force-block-formatting-context">


























<div class="top-bar-fixed container-fluid" data-testid="top-bar">
<div class="top-bar-container gl-display-flex gl-align-items-center gl-gap-2">
<button class="gl-button btn btn-icon btn-md btn-default btn-default-tertiary js-super-sidebar-toggle-expand super-sidebar-toggle gl-ml-n3" aria-controls="super-sidebar" aria-expanded="false" aria-label="Primary navigation sidebar" type="button"><svg class="s16 gl-icon gl-button-icon " data-testid="sidebar-icon"><use href="/assets/icons-33d285b77c0f9173f577e26a550fb6463b9913e368ebfcdbb54022aff27051db.svg#sidebar"></use></svg>

</button>
<nav aria-label="Breadcrumbs" class="breadcrumbs gl-breadcrumbs" data-testid="breadcrumb-links">
<ul class="breadcrumb gl-breadcrumb-list js-breadcrumbs-list">
<li class="gl-breadcrumb-item"><a class="group-path breadcrumb-item-text js-breadcrumb-item-text " href="/systemready"><img srcset="/uploads/-/system/group/avatar/401/ARM1605_SystemReady_logo_Blue_Vertical_ST4.png?width=16 1x, /uploads/-/system/group/avatar/401/ARM1605_SystemReady_logo_Blue_Vertical_ST4.png?width=32 2x" alt="SystemReady" class="gl-avatar gl-avatar-s16 avatar-tile" height="16" width="16" loading="lazy" src="/uploads/-/system/group/avatar/401/ARM1605_SystemReady_logo_Blue_Vertical_ST4.png?width=16" />
SystemReady</a></li><li class="expander gl-breadcrumb-item">
<button aria-label="Show all breadcrumbs" class="text-expander has-tooltip js-breadcrumbs-collapsed-expander" data-container="body" title="Show all breadcrumbs" type="button">
<svg class="s12" data-testid="ellipsis_h-icon"><use href="/assets/icons-33d285b77c0f9173f577e26a550fb6463b9913e368ebfcdbb54022aff27051db.svg#ellipsis_h"></use></svg>
</button>
</li>
<li class="gl-breadcrumb-item gl-display-none!">
<a class="group-path breadcrumb-item-text js-breadcrumb-item-text " href="/systemready/firmware-build">firmware-build</a>
</li>
<li class="gl-breadcrumb-item"><a class="group-path breadcrumb-item-text js-breadcrumb-item-text " href="/systemready/firmware-build/linuxboot">LinuxBoot</a></li> <li class="gl-breadcrumb-item"><a href="/systemready/firmware-build/linuxboot/lbbr-coreboot-poc"><span class="breadcrumb-item-text js-breadcrumb-item-text">LBBR Coreboot PoC</span></a></li>

<li class="gl-breadcrumb-item" data-testid="breadcrumb-current-link">
<a href="/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/blob/main/README.md">Repository</a>
</li>
</ul>
<script type="application/ld+json">
{"@context":"https://schema.org","@type":"BreadcrumbList","itemListElement":[{"@type":"ListItem","position":1,"name":"SystemReady","item":"https://gitlab.arm.com/systemready"},{"@type":"ListItem","position":2,"name":"firmware-build","item":"https://gitlab.arm.com/systemready/firmware-build"},{"@type":"ListItem","position":3,"name":"LinuxBoot","item":"https://gitlab.arm.com/systemready/firmware-build/linuxboot"},{"@type":"ListItem","position":4,"name":"LBBR Coreboot PoC","item":"https://gitlab.arm.com/systemready/firmware-build/linuxboot/lbbr-coreboot-poc"},{"@type":"ListItem","position":5,"name":"Repository","item":"https://gitlab.arm.com/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/blob/main/README.md"}]}

</script>
</nav>



</div>
</div>

</div>
<div class="container-fluid container-limited project-highlight-puc">
<main class="content" id="content-body" itemscope itemtype="http://schema.org/SoftwareSourceCode">
<div class="flash-container flash-container-page sticky" data-testid="flash-container">
<div id="js-global-alerts"></div>
</div>




<div class="js-signature-container" data-signatures-path="/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/commits/af7f454e42cbe442bf98e4d3279fa5fe6e748a77/signatures?limit=1"></div>

<div class="tree-holder gl-pt-4" id="tree-holder">
<div class="nav-block">
<div class="tree-ref-container">
<div class="tree-ref-holder gl-max-w-26">
<div data-project-id="443" data-project-root-path="/systemready/firmware-build/linuxboot/lbbr-coreboot-poc" data-ref="main" data-ref-type="" id="js-tree-ref-switcher"></div>
</div>
<ul class="breadcrumb repo-breadcrumb">
<li class="breadcrumb-item">
<a href="/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/tree/main">lbbr-coreboot-poc
</a></li>
<li class="breadcrumb-item">
<a href="/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/blob/main/README.md"><strong>README.md</strong>
</a></li>
</ul>
</div>
<div class="tree-controls gl-display-flex gl-flex-wrap gl-sm-flex-nowrap gl-align-items-baseline gl-gap-3">
<a class="gl-button btn btn-md btn-default shortcuts-find-file" rel="nofollow" href="/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/find_file/main"><span class="gl-button-text">
Find file

</span>

</a>
<a class="gl-button btn btn-md btn-default js-blob-blame-link" href="/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/blame/main/README.md"><span class="gl-button-text">
Blame
</span>

</a>
<a class="gl-button btn btn-md btn-default " href="/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/commits/main/README.md"><span class="gl-button-text">
History
</span>

</a>
<a class="gl-button btn btn-md btn-default js-data-file-blob-permalink-url" href="/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/blob/af7f454e42cbe442bf98e4d3279fa5fe6e748a77/README.md"><span class="gl-button-text">
Permalink
</span>

</a>
</div>
</div>

<div class="info-well d-none d-sm-block">
<div class="well-segment">
<ul class="blob-commit-info">
<li class="commit flex-row js-toggle-container" id="commit-af7f454e">
<div class="avatar-cell d-none d-sm-block">
<a href="/Jeff.Booher-Kaeding"><img alt="Jeff Booher-Kaeding&#39;s avatar" src="https://secure.gravatar.com/avatar/04ba52bf00ae9a0a32e4175e35b90d3a?s=80&amp;d=identicon" class="avatar s40 gl-display-none gl-sm-display-inline-block" title="Jeff Booher-Kaeding"></a>
</div>
<div class="commit-detail flex-list gl-display-flex gl-justify-content-space-between gl-align-items-center gl-flex-grow-1 gl-min-w-0">
<div class="commit-content" data-testid="commit-content">
<a class="commit-row-message item-title js-onboarding-commit-item " href="/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/commit/af7f454e42cbe442bf98e4d3279fa5fe6e748a77">updated README with more info, and guidence.</a>
<span class="commit-row-message d-inline d-sm-none">
&middot;
af7f454e
</span>
<div class="committer">
<a class="commit-author-link js-user-link" data-user-id="408" href="/Jeff.Booher-Kaeding">Jeff Booher-Kaeding</a> authored <time class="js-timeago" title="May 23, 2024 4:14pm" datetime="2024-05-23T16:14:47Z" data-toggle="tooltip" data-placement="bottom" data-container="body">May 23, 2024</time>
</div>

</div>
<div class="commit-actions flex-row">

<div class="js-commit-pipeline-status" data-endpoint="/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/commit/af7f454e42cbe442bf98e4d3279fa5fe6e748a77/pipelines?ref=main"></div>
<div class="commit-sha-group btn-group d-none d-sm-flex">
<div class="label label-monospace monospace">
af7f454e
</div>
<button class="gl-button btn btn-icon btn-md btn-default " title="Copy commit SHA" aria-label="Copy commit SHA" aria-live="polite" data-toggle="tooltip" data-placement="bottom" data-container="body" data-category="primary" data-size="medium" data-clipboard-text="af7f454e42cbe442bf98e4d3279fa5fe6e748a77" type="button"><svg class="s16 gl-icon gl-button-icon " data-testid="copy-to-clipboard-icon"><use href="/assets/icons-33d285b77c0f9173f577e26a550fb6463b9913e368ebfcdbb54022aff27051db.svg#copy-to-clipboard"></use></svg>

</button>

</div>
</div>
</div>
</li>

</ul>
</div>
<div data-blob-path="README.md" data-branch="main" data-branch-rules-path="/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/-/settings/repository#js-branch-rules" data-project-path="systemready/firmware-build/linuxboot/lbbr-coreboot-poc" id="js-code-owners"></div>

</div>
<div class="blob-content-holder js-per-page" data-blame-per-page="1000" id="blob-content-holder">
<div data-blob-path="README.md" data-explain-code-available="false" data-new-workspace-path="/-/remote_development/workspaces/new" data-original-branch="main" data-project-path="systemready/firmware-build/linuxboot/lbbr-coreboot-poc" data-ref-type="" data-resource-id="gid://gitlab/Project/443" data-target-branch="main" data-user-id="" id="js-view-blob-app">
<div class="gl-spinner-container" role="status"><span aria-label="Loading" class="gl-spinner gl-spinner-md gl-spinner-dark gl-vertical-align-text-bottom!"></span></div>
</div>
</div>

</div>

<script nonce="XFA8CNxGBv5WujyejGrKvw==">
//<![CDATA[
  window.gl = window.gl || {};
  window.gl.webIDEPath = '/-/ide/project/systemready/firmware-build/linuxboot/lbbr-coreboot-poc/edit/main/-/README.md'


//]]>
</script>
<div data-ambiguous="false" data-ref="main" id="js-ambiguous-ref-modal"></div>

</main>
</div>


</div>
</div>


<script nonce="XFA8CNxGBv5WujyejGrKvw==">
//<![CDATA[
if ('loading' in HTMLImageElement.prototype) {
  document.querySelectorAll('img.lazy').forEach(img => {
    img.loading = 'lazy';
    let imgUrl = img.dataset.src;
    // Only adding width + height for avatars for now
    if (imgUrl.indexOf('/avatar/') > -1 && imgUrl.indexOf('?') === -1) {
      const targetWidth = img.getAttribute('width') || img.width;
      imgUrl += `?width=${targetWidth}`;
    }
    img.src = imgUrl;
    img.removeAttribute('data-src');
    img.classList.remove('lazy');
    img.classList.add('js-lazy-loaded');
    img.dataset.testid = 'js-lazy-loaded-content';
  });
}

//]]>
</script>
<script nonce="XFA8CNxGBv5WujyejGrKvw==">
//<![CDATA[
gl = window.gl || {};
gl.experiments = {};


//]]>
</script>

</body>
</html>

