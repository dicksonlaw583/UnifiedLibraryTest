///@func __multipart_generate_boundary__()
///@return {String}
///@ignore
///@desc (INTERNAL: MultipartData) Return a random boundary string.
function __multipart_generate_boundary__() {
	return "----" + sha1_string_unicode(string(date_current_datetime()));
}

///@func __multipart_get_mime_type__(ext)
///@param {String} ext The extension to check (with leading dot)
///@return {String}
///@ignore
///@desc (INTERNAL: MultipartData) Return the MIME type of the given extension.
///
///Based on data from http://svn.apache.org/repos/asf/httpd/httpd/trunk/docs/conf/mime.types
function __multipart_get_mime_type__(ext) {
	switch (ext) {
		case ".ez": return "application/andrew-inset";
		case ".aw": return "application/applixware";
		case ".atom": return "application/atom+xml";
		case ".atomcat": return "application/atomcat+xml";
		case ".atomsvc": return "application/atomsvc+xml";
		case ".ccxml": return "application/ccxml+xml";
		case ".cdmia": return "application/cdmi-capability";
		case ".cdmic": return "application/cdmi-container";
		case ".cdmid": return "application/cdmi-domain";
		case ".cdmio": return "application/cdmi-object";
		case ".cdmiq": return "application/cdmi-queue";
		case ".cu": return "application/cu-seeme";
		case ".davmount": return "application/davmount+xml";
		case ".dbk": return "application/docbook+xml";
		case ".dssc": return "application/dssc+der";
		case ".xdssc": return "application/dssc+xml";
		case ".ecma": return "application/ecmascript";
		case ".emma": return "application/emma+xml";
		case ".epub": return "application/epub+zip";
		case ".exi": return "application/exi";
		case ".pfr": return "application/font-tdpfr";
		case ".gml": return "application/gml+xml";
		case ".gpx": return "application/gpx+xml";
		case ".gxf": return "application/gxf";
		case ".stk": return "application/hyperstudio";
		case ".ink": case ".inkml": return "application/inkml+xml";
		case ".ipfix": return "application/ipfix";
		case ".jar": return "application/java-archive";
		case ".ser": return "application/java-serialized-object";
		case ".class": return "application/java-vm";
		case ".js": return "application/javascript";
		case ".json": return "application/json";
		case ".jsonml": return "application/jsonml+json";
		case ".lostxml": return "application/lost+xml";
		case ".hqx": return "application/mac-binhex40";
		case ".cpt": return "application/mac-compactpro";
		case ".mads": return "application/mads+xml";
		case ".mrc": return "application/marc";
		case ".mrcx": return "application/marcxml+xml";
		case ".ma": case ".nb": case ".mb": return "application/mathematica";
		case ".mathml": return "application/mathml+xml";
		case ".mbox": return "application/mbox";
		case ".mscml": return "application/mediaservercontrol+xml";
		case ".metalink": return "application/metalink+xml";
		case ".meta4": return "application/metalink4+xml";
		case ".mets": return "application/mets+xml";
		case ".mods": return "application/mods+xml";
		case ".m21": case ".mp21": return "application/mp21";
		case ".mp4s": return "application/mp4";
		case ".doc": case ".dot": return "application/msword";
		case ".mxf": return "application/mxf";
		case ".bin": case ".dms": case ".lrf": case ".mar": case ".so": case ".dist": case ".distz": case ".pkg": case ".bpk": case ".dump": case ".elc": case ".deploy": return "application/octet-stream";
		case ".oda": return "application/oda";
		case ".opf": return "application/oebps-package+xml";
		case ".ogx": return "application/ogg";
		case ".omdoc": return "application/omdoc+xml";
		case ".onetoc": case ".onetoc2": case ".onetmp": case ".onepkg": return "application/onenote";
		case ".oxps": return "application/oxps";
		case ".xer": return "application/patch-ops-error+xml";
		case ".pdf": return "application/pdf";
		case ".pgp": return "application/pgp-encrypted";
		case ".asc": case ".sig": return "application/pgp-signature";
		case ".prf": return "application/pics-rules";
		case ".p10": return "application/pkcs10";
		case ".p7m": case ".p7c": return "application/pkcs7-mime";
		case ".p7s": return "application/pkcs7-signature";
		case ".p8": return "application/pkcs8";
		case ".ac": return "application/pkix-attr-cert";
		case ".cer": return "application/pkix-cert";
		case ".crl": return "application/pkix-crl";
		case ".pkipath": return "application/pkix-pkipath";
		case ".pki": return "application/pkixcmp";
		case ".pls": return "application/pls+xml";
		case ".ai": case ".eps": case ".ps": return "application/postscript";
		case ".cww": return "application/prs.cww";
		case ".pskcxml": return "application/pskc+xml";
		case ".rdf": return "application/rdf+xml";
		case ".rif": return "application/reginfo+xml";
		case ".rnc": return "application/relax-ng-compact-syntax";
		case ".rl": return "application/resource-lists+xml";
		case ".rld": return "application/resource-lists-diff+xml";
		case ".rs": return "application/rls-services+xml";
		case ".gbr": return "application/rpki-ghostbusters";
		case ".mft": return "application/rpki-manifest";
		case ".roa": return "application/rpki-roa";
		case ".rsd": return "application/rsd+xml";
		case ".rss": return "application/rss+xml";
		case ".rtf": return "application/rtf";
		case ".sbml": return "application/sbml+xml";
		case ".scq": return "application/scvp-cv-request";
		case ".scs": return "application/scvp-cv-response";
		case ".spq": return "application/scvp-vp-request";
		case ".spp": return "application/scvp-vp-response";
		case ".sdp": return "application/sdp";
		case ".setpay": return "application/set-payment-initiation";
		case ".setreg": return "application/set-registration-initiation";
		case ".shf": return "application/shf+xml";
		case ".smi": case ".smil": return "application/smil+xml";
		case ".rq": return "application/sparql-query";
		case ".srx": return "application/sparql-results+xml";
		case ".gram": return "application/srgs";
		case ".grxml": return "application/srgs+xml";
		case ".sru": return "application/sru+xml";
		case ".ssdl": return "application/ssdl+xml";
		case ".ssml": return "application/ssml+xml";
		case ".tei": case ".teicorpus": return "application/tei+xml";
		case ".tfi": return "application/thraud+xml";
		case ".tsd": return "application/timestamped-data";
		case ".plb": return "application/vnd.3gpp.pic-bw-large";
		case ".psb": return "application/vnd.3gpp.pic-bw-small";
		case ".pvb": return "application/vnd.3gpp.pic-bw-var";
		case ".tcap": return "application/vnd.3gpp2.tcap";
		case ".pwn": return "application/vnd.3m.post-it-notes";
		case ".aso": return "application/vnd.accpac.simply.aso";
		case ".imp": return "application/vnd.accpac.simply.imp";
		case ".acu": return "application/vnd.acucobol";
		case ".atc": case ".acutc": return "application/vnd.acucorp";
		case ".air": return "application/vnd.adobe.air-application-installer-package+zip";
		case ".fcdt": return "application/vnd.adobe.formscentral.fcdt";
		case ".fxp": case ".fxpl": return "application/vnd.adobe.fxp";
		case ".xdp": return "application/vnd.adobe.xdp+xml";
		case ".xfdf": return "application/vnd.adobe.xfdf";
		case ".ahead": return "application/vnd.ahead.space";
		case ".azf": return "application/vnd.airzip.filesecure.azf";
		case ".azs": return "application/vnd.airzip.filesecure.azs";
		case ".azw": return "application/vnd.amazon.ebook";
		case ".acc": return "application/vnd.americandynamics.acc";
		case ".ami": return "application/vnd.amiga.ami";
		case ".apk": return "application/vnd.android.package-archive";
		case ".cii": return "application/vnd.anser-web-certificate-issue-initiation";
		case ".fti": return "application/vnd.anser-web-funds-transfer-initiation";
		case ".atx": return "application/vnd.antix.game-component";
		case ".mpkg": return "application/vnd.apple.installer+xml";
		case ".m3u8": return "application/vnd.apple.mpegurl";
		case ".swi": return "application/vnd.aristanetworks.swi";
		case ".iota": return "application/vnd.astraea-software.iota";
		case ".aep": return "application/vnd.audiograph";
		case ".mpm": return "application/vnd.blueice.multipass";
		case ".bmi": return "application/vnd.bmi";
		case ".rep": return "application/vnd.businessobjects";
		case ".cdxml": return "application/vnd.chemdraw+xml";
		case ".mmd": return "application/vnd.chipnuts.karaoke-mmd";
		case ".cdy": return "application/vnd.cinderella";
		case ".cla": return "application/vnd.claymore";
		case ".rp9": return "application/vnd.cloanto.rp9";
		case ".c4g": case ".c4d": case ".c4f": case ".c4p": case ".c4u": return "application/vnd.clonk.c4group";
		case ".c11amc": return "application/vnd.cluetrust.cartomobile-config";
		case ".c11amz": return "application/vnd.cluetrust.cartomobile-config-pkg";
		case ".csp": return "application/vnd.commonspace";
		case ".cdbcmsg": return "application/vnd.contact.cmsg";
		case ".cmc": return "application/vnd.cosmocaller";
		case ".clkx": return "application/vnd.crick.clicker";
		case ".clkk": return "application/vnd.crick.clicker.keyboard";
		case ".clkp": return "application/vnd.crick.clicker.palette";
		case ".clkt": return "application/vnd.crick.clicker.template";
		case ".clkw": return "application/vnd.crick.clicker.wordbank";
		case ".wbs": return "application/vnd.criticaltools.wbs+xml";
		case ".pml": return "application/vnd.ctc-posml";
		case ".ppd": return "application/vnd.cups-ppd";
		case ".car": return "application/vnd.curl.car";
		case ".pcurl": return "application/vnd.curl.pcurl";
		case ".dart": return "application/vnd.dart";
		case ".rdz": return "application/vnd.data-vision.rdz";
		case ".uvf": case ".uvvf": case ".uvd": case ".uvvd": return "application/vnd.dece.data";
		case ".uvt": case ".uvvt": return "application/vnd.dece.ttml+xml";
		case ".uvx": case ".uvvx": return "application/vnd.dece.unspecified";
		case ".uvz": case ".uvvz": return "application/vnd.dece.zip";
		case ".fe_launch": return "application/vnd.denovo.fcselayout-link";
		case ".dna": return "application/vnd.dna";
		case ".mlp": return "application/vnd.dolby.mlp";
		case ".dpg": return "application/vnd.dpgraph";
		case ".dfac": return "application/vnd.dreamfactory";
		case ".kpxx": return "application/vnd.ds-keypoint";
		case ".ait": return "application/vnd.dvb.ait";
		case ".svc": return "application/vnd.dvb.service";
		case ".geo": return "application/vnd.dynageo";
		case ".mag": return "application/vnd.ecowin.chart";
		case ".nml": return "application/vnd.enliven";
		case ".esf": return "application/vnd.epson.esf";
		case ".msf": return "application/vnd.epson.msf";
		case ".qam": return "application/vnd.epson.quickanime";
		case ".slt": return "application/vnd.epson.salt";
		case ".ssf": return "application/vnd.epson.ssf";
		case ".es3": case ".et3": return "application/vnd.eszigno3+xml";
		case ".ez2": return "application/vnd.ezpix-album";
		case ".ez3": return "application/vnd.ezpix-package";
		case ".fdf": return "application/vnd.fdf";
		case ".mseed": return "application/vnd.fdsn.mseed";
		case ".seed": case ".dataless": return "application/vnd.fdsn.seed";
		case ".gph": return "application/vnd.flographit";
		case ".ftc": return "application/vnd.fluxtime.clip";
		case ".fm": case ".frame": case ".maker": case ".book": return "application/vnd.framemaker";
		case ".fnc": return "application/vnd.frogans.fnc";
		case ".ltf": return "application/vnd.frogans.ltf";
		case ".fsc": return "application/vnd.fsc.weblaunch";
		case ".oas": return "application/vnd.fujitsu.oasys";
		case ".oa2": return "application/vnd.fujitsu.oasys2";
		case ".oa3": return "application/vnd.fujitsu.oasys3";
		case ".fg5": return "application/vnd.fujitsu.oasysgp";
		case ".bh2": return "application/vnd.fujitsu.oasysprs";
		case ".ddd": return "application/vnd.fujixerox.ddd";
		case ".xdw": return "application/vnd.fujixerox.docuworks";
		case ".xbd": return "application/vnd.fujixerox.docuworks.binder";
		case ".fzs": return "application/vnd.fuzzysheet";
		case ".txd": return "application/vnd.genomatix.tuxedo";
		case ".ggb": return "application/vnd.geogebra.file";
		case ".ggt": return "application/vnd.geogebra.tool";
		case ".gex": case ".gre": return "application/vnd.geometry-explorer";
		case ".gxt": return "application/vnd.geonext";
		case ".g2w": return "application/vnd.geoplan";
		case ".g3w": return "application/vnd.geospace";
		case ".gmx": return "application/vnd.gmx";
		case ".kml": return "application/vnd.google-earth.kml+xml";
		case ".kmz": return "application/vnd.google-earth.kmz";
		case ".gqf": case ".gqs": return "application/vnd.grafeq";
		case ".gac": return "application/vnd.groove-account";
		case ".ghf": return "application/vnd.groove-help";
		case ".gim": return "application/vnd.groove-identity-message";
		case ".grv": return "application/vnd.groove-injector";
		case ".gtm": return "application/vnd.groove-tool-message";
		case ".tpl": return "application/vnd.groove-tool-template";
		case ".vcg": return "application/vnd.groove-vcard";
		case ".hal": return "application/vnd.hal+xml";
		case ".zmm": return "application/vnd.handheld-entertainment+xml";
		case ".hbci": return "application/vnd.hbci";
		case ".les": return "application/vnd.hhe.lesson-player";
		case ".hpgl": return "application/vnd.hp-hpgl";
		case ".hpid": return "application/vnd.hp-hpid";
		case ".hps": return "application/vnd.hp-hps";
		case ".jlt": return "application/vnd.hp-jlyt";
		case ".pcl": return "application/vnd.hp-pcl";
		case ".pclxl": return "application/vnd.hp-pclxl";
		case ".sfd-hdstx": return "application/vnd.hydrostatix.sof-data";
		case ".mpy": return "application/vnd.ibm.minipay";
		case ".afp": case ".listafp": case ".list3820": return "application/vnd.ibm.modcap";
		case ".irm": return "application/vnd.ibm.rights-management";
		case ".sc": return "application/vnd.ibm.secure-container";
		case ".icc": case ".icm": return "application/vnd.iccprofile";
		case ".igl": return "application/vnd.igloader";
		case ".ivp": return "application/vnd.immervision-ivp";
		case ".ivu": return "application/vnd.immervision-ivu";
		case ".igm": return "application/vnd.insors.igm";
		case ".xpw": case ".xpx": return "application/vnd.intercon.formnet";
		case ".i2g": return "application/vnd.intergeo";
		case ".qbo": return "application/vnd.intu.qbo";
		case ".qfx": return "application/vnd.intu.qfx";
		case ".rcprofile": return "application/vnd.ipunplugged.rcprofile";
		case ".irp": return "application/vnd.irepository.package+xml";
		case ".xpr": return "application/vnd.is-xpr";
		case ".fcs": return "application/vnd.isac.fcs";
		case ".jam": return "application/vnd.jam";
		case ".rms": return "application/vnd.jcp.javame.midlet-rms";
		case ".jisp": return "application/vnd.jisp";
		case ".joda": return "application/vnd.joost.joda-archive";
		case ".ktz": case ".ktr": return "application/vnd.kahootz";
		case ".karbon": return "application/vnd.kde.karbon";
		case ".chrt": return "application/vnd.kde.kchart";
		case ".kfo": return "application/vnd.kde.kformula";
		case ".flw": return "application/vnd.kde.kivio";
		case ".kon": return "application/vnd.kde.kontour";
		case ".kpr": case ".kpt": return "application/vnd.kde.kpresenter";
		case ".ksp": return "application/vnd.kde.kspread";
		case ".kwd": case ".kwt": return "application/vnd.kde.kword";
		case ".htke": return "application/vnd.kenameaapp";
		case ".kia": return "application/vnd.kidspiration";
		case ".kne": case ".knp": return "application/vnd.kinar";
		case ".skp": case ".skd": case ".skt": case ".skm": return "application/vnd.koan";
		case ".sse": return "application/vnd.kodak-descriptor";
		case ".lasxml": return "application/vnd.las.las+xml";
		case ".lbd": return "application/vnd.llamagraphics.life-balance.desktop";
		case ".lbe": return "application/vnd.llamagraphics.life-balance.exchange+xml";
		case ".123": return "application/vnd.lotus-1-2-3";
		case ".apr": return "application/vnd.lotus-approach";
		case ".pre": return "application/vnd.lotus-freelance";
		case ".nsf": return "application/vnd.lotus-notes";
		case ".org": return "application/vnd.lotus-organizer";
		case ".scm": return "application/vnd.lotus-screencam";
		case ".lwp": return "application/vnd.lotus-wordpro";
		case ".portpkg": return "application/vnd.macports.portpkg";
		case ".mcd": return "application/vnd.mcd";
		case ".mc1": return "application/vnd.medcalcdata";
		case ".cdkey": return "application/vnd.mediastation.cdkey";
		case ".mwf": return "application/vnd.mfer";
		case ".mfm": return "application/vnd.mfmp";
		case ".flo": return "application/vnd.micrografx.flo";
		case ".igx": return "application/vnd.micrografx.igx";
		case ".mif": return "application/vnd.mif";
		case ".daf": return "application/vnd.mobius.daf";
		case ".dis": return "application/vnd.mobius.dis";
		case ".mbk": return "application/vnd.mobius.mbk";
		case ".mqy": return "application/vnd.mobius.mqy";
		case ".msl": return "application/vnd.mobius.msl";
		case ".plc": return "application/vnd.mobius.plc";
		case ".txf": return "application/vnd.mobius.txf";
		case ".mpn": return "application/vnd.mophun.application";
		case ".mpc": return "application/vnd.mophun.certificate";
		case ".xul": return "application/vnd.mozilla.xul+xml";
		case ".cil": return "application/vnd.ms-artgalry";
		case ".cab": return "application/vnd.ms-cab-compressed";
		case ".xls": case ".xlm": case ".xla": case ".xlc": case ".xlt": case ".xlw": return "application/vnd.ms-excel";
		case ".xlam": return "application/vnd.ms-excel.addin.macroenabled.12";
		case ".xlsb": return "application/vnd.ms-excel.sheet.binary.macroenabled.12";
		case ".xlsm": return "application/vnd.ms-excel.sheet.macroenabled.12";
		case ".xltm": return "application/vnd.ms-excel.template.macroenabled.12";
		case ".eot": return "application/vnd.ms-fontobject";
		case ".chm": return "application/vnd.ms-htmlhelp";
		case ".ims": return "application/vnd.ms-ims";
		case ".lrm": return "application/vnd.ms-lrm";
		case ".thmx": return "application/vnd.ms-officetheme";
		case ".cat": return "application/vnd.ms-pki.seccat";
		case ".stl": return "application/vnd.ms-pki.stl";
		case ".ppt": case ".pps": case ".pot": return "application/vnd.ms-powerpoint";
		case ".ppam": return "application/vnd.ms-powerpoint.addin.macroenabled.12";
		case ".pptm": return "application/vnd.ms-powerpoint.presentation.macroenabled.12";
		case ".sldm": return "application/vnd.ms-powerpoint.slide.macroenabled.12";
		case ".ppsm": return "application/vnd.ms-powerpoint.slideshow.macroenabled.12";
		case ".potm": return "application/vnd.ms-powerpoint.template.macroenabled.12";
		case ".mpp": case ".mpt": return "application/vnd.ms-project";
		case ".docm": return "application/vnd.ms-word.document.macroenabled.12";
		case ".dotm": return "application/vnd.ms-word.template.macroenabled.12";
		case ".wps": case ".wks": case ".wcm": case ".wdb": return "application/vnd.ms-works";
		case ".wpl": return "application/vnd.ms-wpl";
		case ".xps": return "application/vnd.ms-xpsdocument";
		case ".mseq": return "application/vnd.mseq";
		case ".mus": return "application/vnd.musician";
		case ".msty": return "application/vnd.muvee.style";
		case ".taglet": return "application/vnd.mynfc";
		case ".nlu": return "application/vnd.neurolanguage.nlu";
		case ".ntf": case ".nitf": return "application/vnd.nitf";
		case ".nnd": return "application/vnd.noblenet-directory";
		case ".nns": return "application/vnd.noblenet-sealer";
		case ".nnw": return "application/vnd.noblenet-web";
		case ".ngdat": return "application/vnd.nokia.n-gage.data";
		case ".n-gage": return "application/vnd.nokia.n-gage.symbian.install";
		case ".rpst": return "application/vnd.nokia.radio-preset";
		case ".rpss": return "application/vnd.nokia.radio-presets";
		case ".edm": return "application/vnd.novadigm.edm";
		case ".edx": return "application/vnd.novadigm.edx";
		case ".ext": return "application/vnd.novadigm.ext";
		case ".odc": return "application/vnd.oasis.opendocument.chart";
		case ".otc": return "application/vnd.oasis.opendocument.chart-template";
		case ".odb": return "application/vnd.oasis.opendocument.database";
		case ".odf": return "application/vnd.oasis.opendocument.formula";
		case ".odft": return "application/vnd.oasis.opendocument.formula-template";
		case ".odg": return "application/vnd.oasis.opendocument.graphics";
		case ".otg": return "application/vnd.oasis.opendocument.graphics-template";
		case ".odi": return "application/vnd.oasis.opendocument.image";
		case ".oti": return "application/vnd.oasis.opendocument.image-template";
		case ".odp": return "application/vnd.oasis.opendocument.presentation";
		case ".otp": return "application/vnd.oasis.opendocument.presentation-template";
		case ".ods": return "application/vnd.oasis.opendocument.spreadsheet";
		case ".ots": return "application/vnd.oasis.opendocument.spreadsheet-template";
		case ".odt": return "application/vnd.oasis.opendocument.text";
		case ".odm": return "application/vnd.oasis.opendocument.text-master";
		case ".ott": return "application/vnd.oasis.opendocument.text-template";
		case ".oth": return "application/vnd.oasis.opendocument.text-web";
		case ".xo": return "application/vnd.olpc-sugar";
		case ".dd2": return "application/vnd.oma.dd2+xml";
		case ".oxt": return "application/vnd.openofficeorg.extension";
		case ".pptx": return "application/vnd.openxmlformats-officedocument.presentationml.presentation";
		case ".sldx": return "application/vnd.openxmlformats-officedocument.presentationml.slide";
		case ".ppsx": return "application/vnd.openxmlformats-officedocument.presentationml.slideshow";
		case ".potx": return "application/vnd.openxmlformats-officedocument.presentationml.template";
		case ".xlsx": return "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
		case ".xltx": return "application/vnd.openxmlformats-officedocument.spreadsheetml.template";
		case ".docx": return "application/vnd.openxmlformats-officedocument.wordprocessingml.document";
		case ".dotx": return "application/vnd.openxmlformats-officedocument.wordprocessingml.template";
		case ".mgp": return "application/vnd.osgeo.mapguide.package";
		case ".dp": return "application/vnd.osgi.dp";
		case ".esa": return "application/vnd.osgi.subsystem";
		case ".pdb": case ".pqa": case ".oprc": return "application/vnd.palm";
		case ".paw": return "application/vnd.pawaafile";
		case ".str": return "application/vnd.pg.format";
		case ".ei6": return "application/vnd.pg.osasli";
		case ".efif": return "application/vnd.picsel";
		case ".wg": return "application/vnd.pmi.widget";
		case ".plf": return "application/vnd.pocketlearn";
		case ".pbd": return "application/vnd.powerbuilder6";
		case ".box": return "application/vnd.previewsystems.box";
		case ".mgz": return "application/vnd.proteus.magazine";
		case ".qps": return "application/vnd.publishare-delta-tree";
		case ".ptid": return "application/vnd.pvi.ptid1";
		case ".qxd": case ".qxt": case ".qwd": case ".qwt": case ".qxl": case ".qxb": return "application/vnd.quark.quarkxpress";
		case ".bed": return "application/vnd.realvnc.bed";
		case ".mxl": return "application/vnd.recordare.musicxml";
		case ".musicxml": return "application/vnd.recordare.musicxml+xml";
		case ".cryptonote": return "application/vnd.rig.cryptonote";
		case ".cod": return "application/vnd.rim.cod";
		case ".rm": return "application/vnd.rn-realmedia";
		case ".rmvb": return "application/vnd.rn-realmedia-vbr";
		case ".link66": return "application/vnd.route66.link66+xml";
		case ".st": return "application/vnd.sailingtracker.track";
		case ".see": return "application/vnd.seemail";
		case ".sema": return "application/vnd.sema";
		case ".semd": return "application/vnd.semd";
		case ".semf": return "application/vnd.semf";
		case ".ifm": return "application/vnd.shana.informed.formdata";
		case ".itp": return "application/vnd.shana.informed.formtemplate";
		case ".iif": return "application/vnd.shana.informed.interchange";
		case ".ipk": return "application/vnd.shana.informed.package";
		case ".twd": case ".twds": return "application/vnd.simtech-mindmapper";
		case ".mmf": return "application/vnd.smaf";
		case ".teacher": return "application/vnd.smart.teacher";
		case ".sdkm": case ".sdkd": return "application/vnd.solent.sdkm+xml";
		case ".dxp": return "application/vnd.spotfire.dxp";
		case ".sfs": return "application/vnd.spotfire.sfs";
		case ".sdc": return "application/vnd.stardivision.calc";
		case ".sda": return "application/vnd.stardivision.draw";
		case ".sdd": return "application/vnd.stardivision.impress";
		case ".smf": return "application/vnd.stardivision.math";
		case ".sdw": case ".vor": return "application/vnd.stardivision.writer";
		case ".sgl": return "application/vnd.stardivision.writer-global";
		case ".smzip": return "application/vnd.stepmania.package";
		case ".sm": return "application/vnd.stepmania.stepchart";
		case ".sxc": return "application/vnd.sun.xml.calc";
		case ".stc": return "application/vnd.sun.xml.calc.template";
		case ".sxd": return "application/vnd.sun.xml.draw";
		case ".std": return "application/vnd.sun.xml.draw.template";
		case ".sxi": return "application/vnd.sun.xml.impress";
		case ".sti": return "application/vnd.sun.xml.impress.template";
		case ".sxm": return "application/vnd.sun.xml.math";
		case ".sxw": return "application/vnd.sun.xml.writer";
		case ".sxg": return "application/vnd.sun.xml.writer.global";
		case ".stw": return "application/vnd.sun.xml.writer.template";
		case ".sus": case ".susp": return "application/vnd.sus-calendar";
		case ".svd": return "application/vnd.svd";
		case ".sis": case ".sisx": return "application/vnd.symbian.install";
		case ".xsm": return "application/vnd.syncml+xml";
		case ".bdm": return "application/vnd.syncml.dm+wbxml";
		case ".xdm": return "application/vnd.syncml.dm+xml";
		case ".tao": return "application/vnd.tao.intent-module-archive";
		case ".pcap": case ".cap": case ".dmp": return "application/vnd.tcpdump.pcap";
		case ".tmo": return "application/vnd.tmobile-livetv";
		case ".tpt": return "application/vnd.trid.tpt";
		case ".mxs": return "application/vnd.triscape.mxs";
		case ".tra": return "application/vnd.trueapp";
		case ".ufd": case ".ufdl": return "application/vnd.ufdl";
		case ".utz": return "application/vnd.uiq.theme";
		case ".umj": return "application/vnd.umajin";
		case ".unityweb": return "application/vnd.unity";
		case ".uoml": return "application/vnd.uoml+xml";
		case ".vcx": return "application/vnd.vcx";
		case ".vsd": case ".vst": case ".vss": case ".vsw": return "application/vnd.visio";
		case ".vis": return "application/vnd.visionary";
		case ".vsf": return "application/vnd.vsf";
		case ".wbxml": return "application/vnd.wap.wbxml";
		case ".wmlc": return "application/vnd.wap.wmlc";
		case ".wmlsc": return "application/vnd.wap.wmlscriptc";
		case ".wtb": return "application/vnd.webturbo";
		case ".nbp": return "application/vnd.wolfram.player";
		case ".wpd": return "application/vnd.wordperfect";
		case ".wqd": return "application/vnd.wqd";
		case ".stf": return "application/vnd.wt.stf";
		case ".xar": return "application/vnd.xara";
		case ".xfdl": return "application/vnd.xfdl";
		case ".hvd": return "application/vnd.yamaha.hv-dic";
		case ".hvs": return "application/vnd.yamaha.hv-script";
		case ".hvp": return "application/vnd.yamaha.hv-voice";
		case ".osf": return "application/vnd.yamaha.openscoreformat";
		case ".osfpvg": return "application/vnd.yamaha.openscoreformat.osfpvg+xml";
		case ".saf": return "application/vnd.yamaha.smaf-audio";
		case ".spf": return "application/vnd.yamaha.smaf-phrase";
		case ".cmp": return "application/vnd.yellowriver-custom-menu";
		case ".zir": case ".zirz": return "application/vnd.zul";
		case ".zaz": return "application/vnd.zzazz.deck+xml";
		case ".vxml": return "application/voicexml+xml";
		case ".wgt": return "application/widget";
		case ".hlp": return "application/winhlp";
		case ".wsdl": return "application/wsdl+xml";
		case ".wspolicy": return "application/wspolicy+xml";
		case ".7z": return "application/x-7z-compressed";
		case ".abw": return "application/x-abiword";
		case ".ace": return "application/x-ace-compressed";
		case ".dmg": return "application/x-apple-diskimage";
		case ".aab": case ".x32": case ".u32": case ".vox": return "application/x-authorware-bin";
		case ".aam": return "application/x-authorware-map";
		case ".aas": return "application/x-authorware-seg";
		case ".bcpio": return "application/x-bcpio";
		case ".torrent": return "application/x-bittorrent";
		case ".blb": case ".blorb": return "application/x-blorb";
		case ".bz": return "application/x-bzip";
		case ".bz2": case ".boz": return "application/x-bzip2";
		case ".cbr": case ".cba": case ".cbt": case ".cbz": case ".cb7": return "application/x-cbr";
		case ".vcd": return "application/x-cdlink";
		case ".cfs": return "application/x-cfs-compressed";
		case ".chat": return "application/x-chat";
		case ".pgn": return "application/x-chess-pgn";
		case ".nsc": return "application/x-conference";
		case ".cpio": return "application/x-cpio";
		case ".csh": return "application/x-csh";
		case ".deb": case ".udeb": return "application/x-debian-package";
		case ".dgc": return "application/x-dgc-compressed";
		case ".dir": case ".dcr": case ".dxr": case ".cst": case ".cct": case ".cxt": case ".w3d": case ".fgd": case ".swa": return "application/x-director";
		case ".wad": return "application/x-doom";
		case ".ncx": return "application/x-dtbncx+xml";
		case ".dtb": return "application/x-dtbook+xml";
		case ".res": return "application/x-dtbresource+xml";
		case ".dvi": return "application/x-dvi";
		case ".evy": return "application/x-envoy";
		case ".eva": return "application/x-eva";
		case ".bdf": return "application/x-font-bdf";
		case ".gsf": return "application/x-font-ghostscript";
		case ".psf": return "application/x-font-linux-psf";
		case ".otf": return "application/x-font-otf";
		case ".pcf": return "application/x-font-pcf";
		case ".snf": return "application/x-font-snf";
		case ".ttf": case ".ttc": return "application/x-font-ttf";
		case ".pfa": case ".pfb": case ".pfm": case ".afm": return "application/x-font-type1";
		case ".woff": return "application/font-woff";
		case ".arc": return "application/x-freearc";
		case ".spl": return "application/x-futuresplash";
		case ".gca": return "application/x-gca-compressed";
		case ".ulx": return "application/x-glulx";
		case ".gnumeric": return "application/x-gnumeric";
		case ".gramps": return "application/x-gramps-xml";
		case ".gtar": return "application/x-gtar";
		case ".hdf": return "application/x-hdf";
		case ".install": return "application/x-install-instructions";
		case ".iso": return "application/x-iso9660-image";
		case ".jnlp": return "application/x-java-jnlp-file";
		case ".latex": return "application/x-latex";
		case ".lzh": case ".lha": return "application/x-lzh-compressed";
		case ".mie": return "application/x-mie";
		case ".prc": case ".mobi": return "application/x-mobipocket-ebook";
		case ".application": return "application/x-ms-application";
		case ".lnk": return "application/x-ms-shortcut";
		case ".wmd": return "application/x-ms-wmd";
		case ".wmz": return "application/x-ms-wmz";
		case ".xbap": return "application/x-ms-xbap";
		case ".mdb": return "application/x-msaccess";
		case ".obd": return "application/x-msbinder";
		case ".crd": return "application/x-mscardfile";
		case ".clp": return "application/x-msclip";
		case ".exe": case ".dll": case ".com": case ".bat": case ".msi": return "application/x-msdownload";
		case ".mvb": case ".m13": case ".m14": return "application/x-msmediaview";
		case ".wmf": case ".emf": case ".emz": return "application/x-msmetafile";
		case ".mny": return "application/x-msmoney";
		case ".pub": return "application/x-mspublisher";
		case ".scd": return "application/x-msschedule";
		case ".trm": return "application/x-msterminal";
		case ".wri": return "application/x-mswrite";
		case ".nc": case ".cdf": return "application/x-netcdf";
		case ".nzb": return "application/x-nzb";
		case ".p12": case ".pfx": return "application/x-pkcs12";
		case ".p7b": case ".spc": return "application/x-pkcs7-certificates";
		case ".p7r": return "application/x-pkcs7-certreqresp";
		case ".rar": return "application/x-rar-compressed";
		case ".ris": return "application/x-research-info-systems";
		case ".sh": return "application/x-sh";
		case ".shar": return "application/x-shar";
		case ".swf": return "application/x-shockwave-flash";
		case ".xap": return "application/x-silverlight-app";
		case ".sql": return "application/x-sql";
		case ".sit": return "application/x-stuffit";
		case ".sitx": return "application/x-stuffitx";
		case ".srt": return "application/x-subrip";
		case ".sv4cpio": return "application/x-sv4cpio";
		case ".sv4crc": return "application/x-sv4crc";
		case ".t3": return "application/x-t3vm-image";
		case ".gam": return "application/x-tads";
		case ".tar": return "application/x-tar";
		case ".tcl": return "application/x-tcl";
		case ".tex": return "application/x-tex";
		case ".tfm": return "application/x-tex-tfm";
		case ".texinfo": case ".texi": return "application/x-texinfo";
		case ".obj": return "application/x-tgif";
		case ".ustar": return "application/x-ustar";
		case ".src": return "application/x-wais-source";
		case ".der": case ".crt": return "application/x-x509-ca-cert";
		case ".fig": return "application/x-xfig";
		case ".xlf": return "application/x-xliff+xml";
		case ".xpi": return "application/x-xpinstall";
		case ".xz": return "application/x-xz";
		case ".z1": case ".z2": case ".z3": case ".z4": case ".z5": case ".z6": case ".z7": case ".z8": return "application/x-zmachine";
		case ".xaml": return "application/xaml+xml";
		case ".xdf": return "application/xcap-diff+xml";
		case ".xenc": return "application/xenc+xml";
		case ".xhtml": case ".xht": return "application/xhtml+xml";
		case ".xml": case ".xsl": return "application/xml";
		case ".dtd": return "application/xml-dtd";
		case ".xop": return "application/xop+xml";
		case ".xpl": return "application/xproc+xml";
		case ".xslt": return "application/xslt+xml";
		case ".xspf": return "application/xspf+xml";
		case ".mxml": case ".xhvml": case ".xvml": case ".xvm": return "application/xv+xml";
		case ".yang": return "application/yang";
		case ".yin": return "application/yin+xml";
		case ".zip": return "application/zip";
		case ".adp": return "audio/adpcm";
		case ".au": case ".snd": return "audio/basic";
		case ".mid": case ".midi": case ".kar": case ".rmi": return "audio/midi";
		case ".mp4a": return "audio/mp4";
		case ".mpga": case ".mp2": case ".mp2a": case ".mp3": case ".m2a": case ".m3a": return "audio/mpeg";
		case ".oga": case ".ogg": case ".spx": return "audio/ogg";
		case ".s3m": return "audio/s3m";
		case ".sil": return "audio/silk";
		case ".uva": case ".uvva": return "audio/vnd.dece.audio";
		case ".eol": return "audio/vnd.digital-winds";
		case ".dra": return "audio/vnd.dra";
		case ".dts": return "audio/vnd.dts";
		case ".dtshd": return "audio/vnd.dts.hd";
		case ".lvp": return "audio/vnd.lucent.voice";
		case ".pya": return "audio/vnd.ms-playready.media.pya";
		case ".ecelp4800": return "audio/vnd.nuera.ecelp4800";
		case ".ecelp7470": return "audio/vnd.nuera.ecelp7470";
		case ".ecelp9600": return "audio/vnd.nuera.ecelp9600";
		case ".rip": return "audio/vnd.rip";
		case ".weba": return "audio/webm";
		case ".aac": return "audio/x-aac";
		case ".aif": case ".aiff": case ".aifc": return "audio/x-aiff";
		case ".caf": return "audio/x-caf";
		case ".flac": return "audio/x-flac";
		case ".mka": return "audio/x-matroska";
		case ".m3u": return "audio/x-mpegurl";
		case ".wax": return "audio/x-ms-wax";
		case ".wma": return "audio/x-ms-wma";
		case ".ram": case ".ra": return "audio/x-pn-realaudio";
		case ".rmp": return "audio/x-pn-realaudio-plugin";
		case ".wav": return "audio/x-wav";
		case ".xm": return "audio/xm";
		case ".cdx": return "chemical/x-cdx";
		case ".cif": return "chemical/x-cif";
		case ".cmdf": return "chemical/x-cmdf";
		case ".cml": return "chemical/x-cml";
		case ".csml": return "chemical/x-csml";
		case ".xyz": return "chemical/x-xyz";
		case ".bmp": return "image/bmp";
		case ".cgm": return "image/cgm";
		case ".g3": return "image/g3fax";
		case ".gif": return "image/gif";
		case ".ief": return "image/ief";
		case ".jpeg": case ".jpg": case ".jpe": return "image/jpeg";
		case ".ktx": return "image/ktx";
		case ".png": return "image/png";
		case ".btif": return "image/prs.btif";
		case ".sgi": return "image/sgi";
		case ".svg": case ".svgz": return "image/svg+xml";
		case ".tiff": case ".tif": return "image/tiff";
		case ".psd": return "image/vnd.adobe.photoshop";
		case ".uvi": case ".uvvi": case ".uvg": case ".uvvg": return "image/vnd.dece.graphic";
		case ".sub": return "image/vnd.dvb.subtitle";
		case ".djvu": case ".djv": return "image/vnd.djvu";
		case ".dwg": return "image/vnd.dwg";
		case ".dxf": return "image/vnd.dxf";
		case ".fbs": return "image/vnd.fastbidsheet";
		case ".fpx": return "image/vnd.fpx";
		case ".fst": return "image/vnd.fst";
		case ".mmr": return "image/vnd.fujixerox.edmics-mmr";
		case ".rlc": return "image/vnd.fujixerox.edmics-rlc";
		case ".mdi": return "image/vnd.ms-modi";
		case ".wdp": return "image/vnd.ms-photo";
		case ".npx": return "image/vnd.net-fpx";
		case ".wbmp": return "image/vnd.wap.wbmp";
		case ".xif": return "image/vnd.xiff";
		case ".webp": return "image/webp";
		case ".3ds": return "image/x-3ds";
		case ".ras": return "image/x-cmu-raster";
		case ".cmx": return "image/x-cmx";
		case ".fh": case ".fhc": case ".fh4": case ".fh5": case ".fh7": return "image/x-freehand";
		case ".ico": return "image/x-icon";
		case ".sid": return "image/x-mrsid-image";
		case ".pcx": return "image/x-pcx";
		case ".pic": case ".pct": return "image/x-pict";
		case ".pnm": return "image/x-portable-anymap";
		case ".pbm": return "image/x-portable-bitmap";
		case ".pgm": return "image/x-portable-graymap";
		case ".ppm": return "image/x-portable-pixmap";
		case ".rgb": return "image/x-rgb";
		case ".tga": return "image/x-tga";
		case ".xbm": return "image/x-xbitmap";
		case ".xpm": return "image/x-xpixmap";
		case ".xwd": return "image/x-xwindowdump";
		case ".eml": case ".mime": return "message/rfc822";
		case ".igs": case ".iges": return "model/iges";
		case ".msh": case ".mesh": case ".silo": return "model/mesh";
		case ".dae": return "model/vnd.collada+xml";
		case ".dwf": return "model/vnd.dwf";
		case ".gdl": return "model/vnd.gdl";
		case ".gtw": return "model/vnd.gtw";
		case ".mts": return "model/vnd.mts";
		case ".vtu": return "model/vnd.vtu";
		case ".wrl": case ".vrml": return "model/vrml";
		case ".x3db": case ".x3dbz": return "model/x3d+binary";
		case ".x3dv": case ".x3dvz": return "model/x3d+vrml";
		case ".x3d": case ".x3dz": return "model/x3d+xml";
		case ".appcache": return "text/cache-manifest";
		case ".ics": case ".ifb": return "text/calendar";
		case ".css": return "text/css";
		case ".csv": return "text/csv";
		case ".html": case ".htm": return "text/html";
		case ".n3": return "text/n3";
		case ".txt": case ".text": case ".conf": case ".def": case ".list": case ".log": case ".in": return "text/plain";
		case ".dsc": return "text/prs.lines.tag";
		case ".rtx": return "text/richtext";
		case ".sgml": case ".sgm": return "text/sgml";
		case ".tsv": return "text/tab-separated-values";
		case ".t": case ".tr": case ".roff": case ".man": case ".me": case ".ms": return "text/troff";
		case ".ttl": return "text/turtle";
		case ".uri": case ".uris": case ".urls": return "text/uri-list";
		case ".vcard": return "text/vcard";
		case ".curl": return "text/vnd.curl";
		case ".dcurl": return "text/vnd.curl.dcurl";
		case ".scurl": return "text/vnd.curl.scurl";
		case ".mcurl": return "text/vnd.curl.mcurl";
		case ".fly": return "text/vnd.fly";
		case ".flx": return "text/vnd.fmi.flexstor";
		case ".gv": return "text/vnd.graphviz";
		case ".3dml": return "text/vnd.in3d.3dml";
		case ".spot": return "text/vnd.in3d.spot";
		case ".jad": return "text/vnd.sun.j2me.app-descriptor";
		case ".wml": return "text/vnd.wap.wml";
		case ".wmls": return "text/vnd.wap.wmlscript";
		case ".s": case ".asm": return "text/x-asm";
		case ".c": case ".cc": case ".cxx": case ".cpp": case ".h": case ".hh": case ".dic": return "text/x-c";
		case ".f": case ".for": case ".f77": case ".f90": return "text/x-fortran";
		case ".java": return "text/x-java-source";
		case ".opml": return "text/x-opml";
		case ".p": case ".pas": return "text/x-pascal";
		case ".nfo": return "text/x-nfo";
		case ".etx": return "text/x-setext";
		case ".sfv": return "text/x-sfv";
		case ".uu": return "text/x-uuencode";
		case ".vcs": return "text/x-vcalendar";
		case ".vcf": return "text/x-vcard";
		case ".3gp": return "video/3gpp";
		case ".3g2": return "video/3gpp2";
		case ".h261": return "video/h261";
		case ".h263": return "video/h263";
		case ".h264": return "video/h264";
		case ".jpgv": return "video/jpeg";
		case ".jpm": case ".jpgm": return "video/jpm";
		case ".mj2": case ".mjp2": return "video/mj2";
		case ".mp4": case ".mp4v": case ".mpg4": return "video/mp4";
		case ".mpeg": case ".mpg": case ".mpe": case ".m1v": case ".m2v": return "video/mpeg";
		case ".ogv": return "video/ogg";
		case ".qt": case ".mov": return "video/quicktime";
		case ".uvh": case ".uvvh": return "video/vnd.dece.hd";
		case ".uvm": case ".uvvm": return "video/vnd.dece.mobile";
		case ".uvp": case ".uvvp": return "video/vnd.dece.pd";
		case ".uvs": case ".uvvs": return "video/vnd.dece.sd";
		case ".uvv": case ".uvvv": return "video/vnd.dece.video";
		case ".dvb": return "video/vnd.dvb.file";
		case ".fvt": return "video/vnd.fvt";
		case ".mxu": case ".m4u": return "video/vnd.mpegurl";
		case ".pyv": return "video/vnd.ms-playready.media.pyv";
		case ".uvu": case ".uvvu": return "video/vnd.uvvu.mp4";
		case ".viv": return "video/vnd.vivo";
		case ".webm": return "video/webm";
		case ".f4v": return "video/x-f4v";
		case ".fli": return "video/x-fli";
		case ".flv": return "video/x-flv";
		case ".m4v": return "video/x-m4v";
		case ".mkv": case ".mk3d": case ".mks": return "video/x-matroska";
		case ".mng": return "video/x-mng";
		case ".asf": case ".asx": return "video/x-ms-asf";
		case ".vob": return "video/x-ms-vob";
		case ".wm": return "video/x-ms-wm";
		case ".wmv": return "video/x-ms-wmv";
		case ".wmx": return "video/x-ms-wmx";
		case ".wvx": return "video/x-ms-wvx";
		case ".avi": return "video/x-msvideo";
		case ".movie": return "video/x-sgi-movie";
		case ".smv": return "video/x-smv";
		case ".ice": return "x-conference/x-cooltalk";
		default: return "application/octet-stream";
	}
}

///@func __multipart_write_subarray__(prefix, buffer, data, boundary)
///@param {String} prefix The key prefix.
///@param {Id.Buffer} buffer The buffer to write to.
///@param {Array} data The data array.
///@param {String} boundary The boundary string to use.
///@ignore
///@desc (INTERNAL: MultipartData) Write a subarray in multipart/form-data to the buffer.
function __multipart_write_subarray__(prefix, buffer, data, boundary) {
	var n = array_length(data);
	for (var i = 0; i < n; ++i) {
		var v = data[i];
		var ci = prefix + "[" + string(i) + "]";
		switch (typeof(v)) {
			case "string":
				buffer_write(buffer, buffer_text, "\r\n");
				buffer_write(buffer, buffer_text, "Content-Disposition: form-data; name=\"");
				buffer_write(buffer, buffer_text, ci);
				buffer_write(buffer, buffer_text, "\"\r\n\r\n");
				buffer_write(buffer, buffer_text, v);
			break;
			case "struct":
				if (variable_struct_exists(v, "writeToMultipartBuffer") && is_method(v.writeToMultipartBuffer)) {
					v.writeToMultipartBuffer(buffer, ci, boundary);
				} else {
					__multipart_write_substruct__(ci, buffer, v, boundary);
				}
			break;
			case "array":
				__multipart_write_subarray__(ci, buffer, v, boundary);
			break;
			case "method": break;
			default:
				buffer_write(buffer, buffer_text, "\r\n");
				buffer_write(buffer, buffer_text, "Content-Disposition: form-data; name=\"");
				buffer_write(buffer, buffer_text, ci);
				buffer_write(buffer, buffer_text, "\"\r\n\r\n");
				buffer_write(buffer, buffer_text, string(v));
		}
		if (i < n-1) {
			buffer_write(buffer, buffer_text, "\r\n--");
			buffer_write(buffer, buffer_text, boundary);
		}
	}
}

///@func __multipart_write_substruct__(prefix, buffer, data, boundary)
///@param {String} prefix The key prefix.
///@param {Id.Buffer} buffer The buffer to write to.
///@param {Struct} data The data struct.
///@param {String} boundary The boundary string to use.
///@ignore
///@desc (INTERNAL: MultipartData) Write a substruct in multipart/form-data to the buffer.
function __multipart_write_substruct__(prefix, buffer, data, boundary) {
	var isConflict = instanceof(data) == "JsonStruct";
	var keys = isConflict ? data.keys() : variable_struct_get_names(data);
	var nKeys = array_length(keys);
	for (var i = 0; i < nKeys; ++i) {
		var k = keys[i];
		var v = isConflict ? data.get(k) : variable_struct_get(data, k);
		var ck = prefix + "[" + k + "]";
		switch (typeof(v)) {
			case "string":
				buffer_write(buffer, buffer_text, "\r\n");
				buffer_write(buffer, buffer_text, "Content-Disposition: form-data; name=\"");
				buffer_write(buffer, buffer_text, ck);
				buffer_write(buffer, buffer_text, "\"\r\n\r\n");
				buffer_write(buffer, buffer_text, v);
			break;
			case "struct":
				if (variable_struct_exists(v, "writeToMultipartBuffer") && is_method(v.writeToMultipartBuffer)) {
					v.writeToMultipartBuffer(buffer, ck, boundary);
				} else {
					__multipart_write_substruct__(ck, buffer, v, boundary);
				}
			break;
			case "array":
				__multipart_write_subarray__(ck, buffer, v, boundary);
			break;
			case "method": break;
			default:
				buffer_write(buffer, buffer_text, "\r\n");
				buffer_write(buffer, buffer_text, "Content-Disposition: form-data; name=\"");
				buffer_write(buffer, buffer_text, ck);
				buffer_write(buffer, buffer_text, "\"\r\n\r\n");
				buffer_write(buffer, buffer_text, string(v));
		}
		if (i < nKeys-1) {
			buffer_write(buffer, buffer_text, "\r\n--");
			buffer_write(buffer, buffer_text, boundary);
		}
	}
}


///@class MultipartDataBuilder(data, boundary=String)
///@param {Struct,Struct.JsonStruct} data The body data.
///@param {String} boundary (Optional) The boundary string to use.
///@desc Utility class for building multipart/form-data body buffers.
function MultipartDataBuilder(data, boundary=__multipart_generate_boundary__()) constructor {
	self.boundary = boundary;
	self.data = data;
	size = 0;
	
	///@func getBuffer()
	///@return {Id.Buffer}
	///@desc Return a multipart/form-data body buffer.
	static getBuffer = function() {
		var bodyBuffer = buffer_create(4096, buffer_grow, 1);
		buffer_write(bodyBuffer, buffer_text, "--");
		buffer_write(bodyBuffer, buffer_text, boundary);
		var isConflict = instanceof(data) == "JsonStruct";
		var keys = isConflict ? data.keys() : variable_struct_get_names(data);
		var nKeys = array_length(keys);
		for (var i = 0; i < nKeys; ++i) {
			var k = keys[i];
			var v = isConflict ? data.get(k) : variable_struct_get(data, k);
			switch (typeof(v)) {
				case "string":
					buffer_write(bodyBuffer, buffer_text, "\r\n");
					buffer_write(bodyBuffer, buffer_text, "Content-Disposition: form-data; name=\"");
					buffer_write(bodyBuffer, buffer_text, k);
					buffer_write(bodyBuffer, buffer_text, "\"\r\n\r\n");
					buffer_write(bodyBuffer, buffer_text, v);
				break;
				case "struct":
					if (variable_struct_exists(v, "writeToMultipartBuffer") && is_method(v.writeToMultipartBuffer)) {
						v.writeToMultipartBuffer(bodyBuffer, k, boundary);
					} else {
						__multipart_write_substruct__(k, bodyBuffer, v, boundary);
					}
				break;
				case "array":
					__multipart_write_subarray__(k, bodyBuffer, v, boundary);
				break;
				case "method": break;
				default:
					buffer_write(bodyBuffer, buffer_text, "\r\n");
					buffer_write(bodyBuffer, buffer_text, "Content-Disposition: form-data; name=\"");
					buffer_write(bodyBuffer, buffer_text, k);
					buffer_write(bodyBuffer, buffer_text, "\"\r\n\r\n");
					buffer_write(bodyBuffer, buffer_text, string(v));
			}
			buffer_write(bodyBuffer, buffer_text, "\r\n--");
			buffer_write(bodyBuffer, buffer_text, boundary);
		}
		buffer_write(bodyBuffer, buffer_text, "--\r\n");
		size = buffer_tell(bodyBuffer);
		buffer_resize(bodyBuffer, size);
		return bodyBuffer;
	};
	static getHeaderMap = function() {
		var headerMap = ds_map_create();
		writeHeaderMap(headerMap);
		return headerMap;
	};
	
	///@func writeHeaderMap(map)
	///@param {Id.DsMap} map 
	///@desc Set headers applicable to multipart/form-data in the given header map.
	static writeHeaderMap = function(map) {
		map[? "Content-Type"] = "multipart/form-data; boundary=" + boundary;
		map[? "Content-Length"] = string(size);
	};
}

///@class StringFilePart(filename, body)
///@param {string} filename The file name reported in the request body.
///@param {string} body The contents of the simulated file.
///@desc A file part simulated by a string.
function StringFilePart(filename, body) constructor {
	self.filename = filename;
	mimeType = __multipart_get_mime_type__(filename_ext(filename));
	self.body = body;
	
	///@func writeToMultipartBuffer(b, k, bd)
	///@param {Id.Buffer} b The buffer to write to.
	///@param {string} k The key to write to.
	///@param {string} bd The boundary string to use.
	///@desc Write file data to the given buffer.
	static writeToMultipartBuffer = function(b, k, bd) {
		buffer_write(b, buffer_text, "\r\nContent-Disposition: form-data; name=\"");
		buffer_write(b, buffer_text, k);
		buffer_write(b, buffer_text, "\"; filename=\"");
		buffer_write(b, buffer_text, filename);
		buffer_write(b, buffer_text, "\"\r\nContent-Type: ");
		buffer_write(b, buffer_text, mimeType);
		buffer_write(b, buffer_text, "\r\n\r\n");
		buffer_write(b, buffer_text, body);
	};
}

///@class FilePart(filepath)
///@param {string} filepath The file to attach.
///@desc A file part tied to a file at the binary level.
function FilePart(filepath) constructor {
	self.filepath = filepath;
	mimeType = __multipart_get_mime_type__(filename_ext(filepath));
	
	///@func writeToMultipartBuffer(b, k, bd)
	///@param {Id.Buffer} b The buffer to write to.
	///@param {string} k The key to write to.
	///@param {string} bd The boundary string to use.
	///@desc Write file data to the given buffer.
	static writeToMultipartBuffer = function(b, k, bd) {
		buffer_write(b, buffer_text, "\r\nContent-Disposition: form-data; name=\"");
		buffer_write(b, buffer_text, k);
		buffer_write(b, buffer_text, "\"; filename=\"");
		buffer_write(b, buffer_text, filename_name(filepath));
		buffer_write(b, buffer_text, "\"\r\nContent-Type: ");
		buffer_write(b, buffer_text, mimeType);
		buffer_write(b, buffer_text, "\r\n\r\n");
		var fb = buffer_load(filepath);
		var fbsize = buffer_get_size(fb);
		buffer_copy(fb, 0, fbsize, b, buffer_tell(b));
		buffer_delete(fb);
		buffer_seek(b, buffer_seek_relative, fbsize);
	};
}

///@class TextFilePart(filepath)
///@param {string} filepath The file to attach
///@desc A file part tied to a file at the text level.
function TextFilePart(filepath) constructor {
	self.filepath = filepath;
	newline = "\r\n";
	trailingNewline = false;
	if (argument_count > 1 && is_struct(argument[1])) {
		var opts = argument[1];
		var optKeys = variable_struct_get_names(opts);
		for (var i = array_length(optKeys)-1; i >= 0; --i) {
			var optKey = optKeys[i];
			switch (optKey) {
				case "newline": case "trailingNewline":
					variable_struct_set(self, optKey, variable_struct_get(opts, optKey));
				break;
			}
		}
	}
	mimeType = __multipart_get_mime_type__(filename_ext(filepath));
	
	///@func writeToMultipartBuffer(b, k, bd)
	///@param {Id.Buffer} b The buffer to write to.
	///@param {string} k The key to write to.
	///@param {string} bd The boundary string to use.
	///@desc Write file data to the given buffer.
	static writeToMultipartBuffer = function(b, k, bd) {
		buffer_write(b, buffer_text, "\r\nContent-Disposition: form-data; name=\"");
		buffer_write(b, buffer_text, k);
		buffer_write(b, buffer_text, "\"; filename=\"");
		buffer_write(b, buffer_text, filename_name(filepath));
		buffer_write(b, buffer_text, "\"\r\nContent-Type: ");
		buffer_write(b, buffer_text, mimeType);
		buffer_write(b, buffer_text, "\r\n\r\n");
		var pastFirstLine = false;
		var f;
		for (f = file_text_open_read(filepath); !file_text_eof(f); file_text_readln(f)) {
			if (pastFirstLine) {
				buffer_write(b, buffer_text, newline);
			} else {
				pastFirstLine = true;
			}
			buffer_write(b, buffer_text, file_text_read_string(f));
		}
		if (trailingNewline) {
			buffer_write(b, buffer_text, newline);
		}
		file_text_close(f);
	};
}

///@class BufferFilePart(filename, buffer)
///@param {string} filename The file name reported in the request body.
///@param {Id.Buffer} buffer The contents of the simulated file.
///@desc A file part simulated by a buffer.
function BufferFilePart(filename, buffer) constructor {
	self.filename = filename;
	mimeType = __multipart_get_mime_type__(filename_ext(filename));
	self.buffer = buffer;
	bufferStart = 0;
	bufferSize = buffer_tell(buffer);
	
	///@func writeToMultipartBuffer(b, k, bd)
	///@param {Id.Buffer} b The buffer to write to.
	///@param {string} k The key to write to.
	///@param {string} bd The boundary string to use.
	///@desc Write file data to the given buffer.
	static writeToMultipartBuffer = function(b, k, bd) {
		buffer_write(b, buffer_text, "\r\nContent-Disposition: form-data; name=\"");
		buffer_write(b, buffer_text, k);
		buffer_write(b, buffer_text, "\"; filename=\"");
		buffer_write(b, buffer_text, filename);
		buffer_write(b, buffer_text, "\"\r\nContent-Type: ");
		buffer_write(b, buffer_text, mimeType);
		buffer_write(b, buffer_text, "\r\n\r\n");
		var bt = buffer_tell(b);
		buffer_seek(buffer, buffer_seek_start, bufferStart);
		repeat (bufferSize) {
			buffer_write(b, buffer_u8, buffer_read(buffer, buffer_u8));
		}
		buffer_seek(buffer, buffer_seek_start, bt);
	};
}

///@class BufferPart(buffer)
///@param {Id.Buffer} buffer The buffer to use.
///@desc A field value represented by a buffer.
function BufferPart(buffer) constructor {
	self.buffer = buffer;
	bufferStart = 0;
	bufferSize = buffer_tell(buffer);
	
	///@func writeToMultipartBuffer(b, k, bd)
	///@param {Id.Buffer} b The buffer to write to.
	///@param {string} k The key to write to.
	///@param {string} bd The boundary string to use.
	///@desc Write file data to the given buffer.
	static writeToMultipartBuffer = function(b, k, bd) {
		buffer_write(b, buffer_text, "\r\nContent-Disposition: form-data; name=\"");
		buffer_write(b, buffer_text, k);
		buffer_write(b, buffer_text, "\"\r\n\r\n");
		var bt = buffer_tell(b);
		buffer_seek(buffer, buffer_seek_start, bufferStart);
		repeat (bufferSize) {
			buffer_write(b, buffer_u8, buffer_read(buffer, buffer_u8));
		}
		buffer_seek(buffer, buffer_seek_start, bt);
	};
}
