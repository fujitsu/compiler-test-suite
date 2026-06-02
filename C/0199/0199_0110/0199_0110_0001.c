#include <stdlib.h>
extern signed int v3 (signed int, unsigned char, unsigned char);
extern signed int (*v4) (signed int, unsigned char, unsigned char);
signed short v5 (unsigned char, unsigned char, unsigned int, unsigned short);
signed short (*v6) (unsigned char, unsigned char, unsigned int, unsigned short) = v5;
unsigned short v7 (signed short, unsigned char, signed int, unsigned short);
unsigned short (*v8) (signed short, unsigned char, signed int, unsigned short) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (unsigned char, signed char, unsigned int, unsigned short);
extern unsigned short (*v12) (unsigned char, signed char, unsigned int, unsigned short);
unsigned short v13 (unsigned char);
unsigned short (*v14) (unsigned char) = v13;
void v15 (unsigned int, unsigned short, signed char);
void (*v16) (unsigned int, unsigned short, signed char) = v15;
extern unsigned short v17 (signed char, signed int);
extern unsigned short (*v18) (signed char, signed int);
signed short v19 (unsigned short, signed short);
signed short (*v20) (unsigned short, signed short) = v19;
signed short v23 (signed char, signed char, signed int);
signed short (*v24) (signed char, signed char, signed int) = v23;
extern void v25 (void);
extern void (*v26) (void);
signed short v27 (signed short, signed char);
signed short (*v28) (signed short, signed char) = v27;
extern unsigned short v29 (unsigned int, signed short, signed int);
extern unsigned short (*v30) (unsigned int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v77 = -4;
signed int v76 = 2;
signed int v75 = 1;

signed short v27 (signed short v78, signed char v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 3U;
unsigned int v81 = 5U;
unsigned short v80 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (signed char v83, signed char v84, signed int v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 2;
signed int v87 = -2;
signed short v86 = 3;
trace++;
switch (trace)
{
case 2: 
return v86;
default: abort ();
}
}
}
}

signed short v19 (unsigned short v89, signed short v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed short v93 = 1;
unsigned int v92 = 2U;
unsigned char v91 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned int v94, unsigned short v95, signed char v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed short v99 = 2;
signed short v98 = 1;
unsigned int v97 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = -3;
unsigned char v102 = 2;
signed int v101 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v104, unsigned char v105, signed int v106, unsigned short v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned short v110 = 4;
signed char v109 = 0;
unsigned char v108 = 1;
trace++;
switch (trace)
{
case 7: 
return v110;
default: abort ();
}
}
}
}

signed short v5 (unsigned char v111, unsigned char v112, unsigned int v113, unsigned short v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed short v117 = -3;
unsigned int v116 = 4U;
signed int v115 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
