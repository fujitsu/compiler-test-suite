#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned int, unsigned short, unsigned int);
extern signed short (*v2) (unsigned int, unsigned short, unsigned int);
static unsigned char v3 (signed char, unsigned char);
static unsigned char (*v4) (signed char, unsigned char) = v3;
extern signed short v5 (unsigned char, signed char, signed short);
extern signed short (*v6) (unsigned char, signed char, signed short);
extern unsigned int v7 (unsigned int);
extern unsigned int (*v8) (unsigned int);
extern unsigned int v9 (signed char, signed char);
extern unsigned int (*v10) (signed char, signed char);
extern unsigned short v11 (signed char, unsigned short);
extern unsigned short (*v12) (signed char, unsigned short);
extern void v13 (unsigned short, unsigned short);
extern void (*v14) (unsigned short, unsigned short);
extern signed int v15 (unsigned short, signed char, signed short, signed char);
extern signed int (*v16) (unsigned short, signed char, signed short, signed char);
extern signed short v17 (unsigned short, signed char);
extern signed short (*v18) (unsigned short, signed char);
extern unsigned char v19 (unsigned short, signed int, unsigned short);
extern unsigned char (*v20) (unsigned short, signed int, unsigned short);
unsigned int v21 (signed char, unsigned short, unsigned int, signed short);
unsigned int (*v22) (signed char, unsigned short, unsigned int, signed short) = v21;
signed int v23 (unsigned char, signed short, unsigned char);
signed int (*v24) (unsigned char, signed short, unsigned char) = v23;
static unsigned char v25 (signed short, signed short, unsigned short);
static unsigned char (*v26) (signed short, signed short, unsigned short) = v25;
extern signed char v27 (signed char);
extern signed char (*v28) (signed char);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
signed int v32 = -4;
unsigned int v31 = 5U;

static unsigned char v25 (signed short v34, signed short v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = 2;
signed char v38 = 3;
unsigned int v37 = 7U;
trace++;
switch (trace)
{
case 7: 
{
signed char v40;
signed char v41;
unsigned int v42;
v40 = 0 - 2;
v41 = 2 - 0;
v42 = v9 (v40, v41);
history[history_index++] = (int)v42;
}
break;
case 9: 
{
signed char v43;
signed char v44;
unsigned int v45;
v43 = -1 - v38;
v44 = v38 + v38;
v45 = v9 (v43, v44);
history[history_index++] = (int)v45;
}
break;
case 11: 
return 6;
default: abort ();
}
}
}
}

signed int v23 (unsigned char v46, signed short v47, unsigned char v48)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed char v51 = 0;
unsigned char v50 = 3;
unsigned int v49 = 6U;
trace++;
switch (trace)
{
case 4: 
{
signed char v52;
unsigned char v53;
unsigned char v54;
v52 = v51 - v51;
v53 = v46 + 4;
v54 = v3 (v52, v53);
history[history_index++] = (int)v54;
}
break;
case 6: 
{
signed short v55;
signed short v56;
unsigned short v57;
unsigned char v58;
v55 = v47 - v47;
v56 = v47 - -2;
v57 = 1 + 2;
v58 = v25 (v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 12: 
return 0;
case 14: 
return 0;
default: abort ();
}
}
}
}

unsigned int v21 (signed char v59, unsigned short v60, unsigned int v61, signed short v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 5;
unsigned short v64 = 7;
signed char v63 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v3 (signed char v66, unsigned char v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed char v70 = -2;
unsigned short v69 = 1;
signed char v68 = 0;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v71;
signed short v72;
unsigned char v73;
signed int v74;
v71 = v67 - 5;
v72 = -4 + 2;
v73 = v67 - v67;
v74 = v23 (v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 13: 
return 4;
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
unsigned int v77;
unsigned short v78;
unsigned int v79;
signed short v80;
v77 = 4U - v31;
v78 = 2 - v33;
v79 = 5U - 3U;
v80 = v1 (v77, v78, v79);
history[history_index++] = (int)v80;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
