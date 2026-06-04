#include <stdlib.h>
signed char v1 (signed char, unsigned short, signed char, unsigned char);
signed char (*v2) (signed char, unsigned short, signed char, unsigned char) = v1;
extern unsigned short v3 (signed char, signed char);
extern unsigned short (*v4) (signed char, signed char);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed int v7 (unsigned int);
extern signed int (*v8) (unsigned int);
extern unsigned char v9 (signed short, unsigned short);
extern unsigned char (*v10) (signed short, unsigned short);
void v11 (signed int);
void (*v12) (signed int) = v11;
extern unsigned char v13 (signed int, unsigned int, signed char, signed short);
extern unsigned char (*v14) (signed int, unsigned int, signed char, signed short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
signed int v17 (unsigned char, unsigned int, unsigned char);
signed int (*v18) (unsigned char, unsigned int, unsigned char) = v17;
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
unsigned char v23 (unsigned char, signed short, signed short, unsigned int);
unsigned char (*v24) (unsigned char, signed short, signed short, unsigned int) = v23;
signed int v25 (unsigned short, signed char);
signed int (*v26) (unsigned short, signed char) = v25;
extern unsigned int v27 (unsigned int, unsigned int, signed char);
extern unsigned int (*v28) (unsigned int, unsigned int, signed char);
signed char v29 (signed char, signed char, signed char, signed int);
signed char (*v30) (signed char, signed char, signed char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v53 = -4;
unsigned short v52 = 2;
unsigned char v51 = 7;

signed char v29 (signed char v54, signed char v55, signed char v56, signed int v57)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned int v60 = 6U;
unsigned int v59 = 0U;
unsigned int v58 = 0U;
trace++;
switch (trace)
{
case 3: 
return v54;
case 5: 
return v54;
case 7: 
return v54;
case 9: 
return v55;
case 11: 
return v55;
default: abort ();
}
}
}
}

signed int v25 (unsigned short v61, signed char v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned char v65 = 5;
signed char v64 = 1;
signed short v63 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned char v66, signed short v67, signed short v68, unsigned int v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed int v72 = -3;
unsigned char v71 = 0;
unsigned int v70 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (void)
{
{
for (;;) {
unsigned char v75 = 6;
unsigned int v74 = 2U;
unsigned short v73 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned char v76, unsigned int v77, unsigned char v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 2;
signed short v80 = -2;
signed int v79 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed int v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
signed short v85 = 2;
unsigned char v84 = 1;
signed int v83 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed char v86, unsigned short v87, signed char v88, unsigned char v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = 3;
signed char v91 = -2;
signed int v90 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v93;
v93 = v15 ();
history[history_index++] = (int)v93;
}
break;
case 14: 
return v86;
default: abort ();
}
}
}
}
