#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (unsigned short, unsigned short);
static unsigned char (*v2) (unsigned short, unsigned short) = v1;
signed int v3 (void);
signed int (*v4) (void) = v3;
extern signed int v5 (signed int, unsigned short, unsigned char);
extern signed int (*v6) (signed int, unsigned short, unsigned char);
extern unsigned short v7 (signed short, unsigned char);
extern unsigned short (*v8) (signed short, unsigned char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
unsigned int v11 (signed char, signed char);
unsigned int (*v12) (signed char, signed char) = v11;
extern unsigned int v13 (unsigned int, signed short, unsigned char, unsigned char);
extern unsigned int (*v14) (unsigned int, signed short, unsigned char, unsigned char);
extern signed short v15 (signed int, signed short, unsigned char, unsigned short);
extern signed short (*v16) (signed int, signed short, unsigned char, unsigned short);
signed char v17 (unsigned char, signed int, signed short, signed char);
signed char (*v18) (unsigned char, signed int, signed short, signed char) = v17;
extern signed int v19 (signed char, unsigned char, unsigned int, signed char);
extern signed int (*v20) (signed char, unsigned char, unsigned int, signed char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned short v23 (signed short, unsigned int, unsigned int, unsigned char);
extern unsigned short (*v24) (signed short, unsigned int, unsigned int, unsigned char);
unsigned int v25 (unsigned short);
unsigned int (*v26) (unsigned short) = v25;
void v27 (unsigned short);
void (*v28) (unsigned short) = v27;
extern unsigned char v29 (signed char, signed int, signed char);
extern unsigned char (*v30) (signed char, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 1U;
unsigned short v32 = 6;
signed short v31 = -2;

void v27 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 6U;
signed int v36 = -4;
signed char v35 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v25 (unsigned short v38)
{
history[history_index++] = (int)v38;
{
for (;;) {
signed int v41 = 3;
unsigned int v40 = 1U;
unsigned short v39 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned char v42, signed int v43, signed short v44, signed char v45)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed char v48 = 1;
signed short v47 = 0;
unsigned char v46 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed char v49, signed char v50)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed char v53 = 2;
signed short v52 = 3;
signed char v51 = -1;
trace++;
switch (trace)
{
case 4: 
{
signed short v54;
unsigned int v55;
unsigned int v56;
unsigned char v57;
unsigned short v58;
v54 = -1 - 3;
v55 = 1U + 4U;
v56 = 4U - 5U;
v57 = 7 + 0;
v58 = v23 (v54, v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 6: 
return 2U;
case 8: 
{
signed int v59;
signed short v60;
unsigned char v61;
unsigned short v62;
signed short v63;
v59 = 1 + -1;
v60 = -3 - v52;
v61 = 6 - 7;
v62 = 3 - 0;
v63 = v15 (v59, v60, v61, v62);
history[history_index++] = (int)v63;
}
break;
case 10: 
{
signed short v64;
unsigned int v65;
unsigned int v66;
unsigned char v67;
unsigned short v68;
v64 = v52 + -4;
v65 = 4U + 2U;
v66 = 3U + 7U;
v67 = 2 - 3;
v68 = v23 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 12: 
return 1U;
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
unsigned short v71 = 5;
unsigned char v70 = 4;
unsigned int v69 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (unsigned short v72, unsigned short v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed char v76 = -2;
unsigned int v75 = 5U;
signed int v74 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed short v77;
unsigned int v78;
unsigned int v79;
unsigned char v80;
unsigned short v81;
v77 = 2 - 3;
v78 = v75 + 1U;
v79 = 4U + 6U;
v80 = 3 + 3;
v81 = v23 (v77, v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 2: 
{
signed int v82;
unsigned short v83;
unsigned char v84;
signed int v85;
v82 = 0 + v74;
v83 = 1 - v73;
v84 = 2 + 0;
v85 = v5 (v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 14: 
return 6;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned short v88;
unsigned short v89;
unsigned char v90;
v88 = v32 - 7;
v89 = 3 - 6;
v90 = v1 (v88, v89);
history[history_index++] = (int)v90;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
