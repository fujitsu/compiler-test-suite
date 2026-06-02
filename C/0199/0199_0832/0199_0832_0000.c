#include <stdio.h>
#include <stdlib.h>
static signed short v1 (unsigned short, signed short, signed int, unsigned int);
static signed short (*v2) (unsigned short, signed short, signed int, unsigned int) = v1;
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
extern signed int v5 (signed int, unsigned char, unsigned char, signed short);
extern signed int (*v6) (signed int, unsigned char, unsigned char, signed short);
extern unsigned int v7 (unsigned int, unsigned int, unsigned char);
extern unsigned int (*v8) (unsigned int, unsigned int, unsigned char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed int v11 (signed char, signed int, unsigned short);
extern signed int (*v12) (signed char, signed int, unsigned short);
extern signed char v13 (signed int, signed short, unsigned char);
extern signed char (*v14) (signed int, signed short, unsigned char);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed int v19 (signed short, signed int);
extern signed int (*v20) (signed short, signed int);
extern unsigned short v21 (unsigned int, signed char, signed int, unsigned short);
extern unsigned short (*v22) (unsigned int, signed char, signed int, unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
static unsigned char v25 (signed char, signed int, signed char, unsigned int);
static unsigned char (*v26) (signed char, signed int, signed char, unsigned int) = v25;
signed int v27 (unsigned char, signed short, signed int);
signed int (*v28) (unsigned char, signed short, signed int) = v27;
extern unsigned int v29 (signed short, unsigned int, signed short);
extern unsigned int (*v30) (signed short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
signed int v32 = -4;
unsigned char v31 = 1;

signed int v27 (unsigned char v34, signed short v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 7;
unsigned int v38 = 1U;
unsigned char v37 = 3;
trace++;
switch (trace)
{
case 2: 
return v36;
case 6: 
return v36;
default: abort ();
}
}
}
}

static unsigned char v25 (signed char v40, signed int v41, signed char v42, unsigned int v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = -1;
unsigned char v45 = 4;
signed short v44 = -1;
trace++;
switch (trace)
{
case 9: 
{
signed int v47;
unsigned char v48;
unsigned char v49;
signed short v50;
signed int v51;
v47 = v41 - v41;
v48 = 3 - 2;
v49 = 7 - v45;
v50 = -1 + v44;
v51 = v5 (v47, v48, v49, v50);
history[history_index++] = (int)v51;
}
break;
case 13: 
return v45;
default: abort ();
}
}
}
}

static signed short v1 (unsigned short v52, signed short v53, signed int v54, unsigned int v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = -1;
signed short v57 = 0;
unsigned int v56 = 2U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v59;
signed char v60;
signed int v61;
unsigned short v62;
unsigned short v63;
v59 = v55 + v55;
v60 = -3 + 0;
v61 = 2 + v54;
v62 = 3 + 7;
v63 = v21 (v59, v60, v61, v62);
history[history_index++] = (int)v63;
}
break;
case 4: 
{
unsigned int v64;
signed char v65;
signed int v66;
unsigned short v67;
unsigned short v68;
v64 = 1U + 7U;
v65 = v58 - v58;
v66 = v54 - 2;
v67 = v52 + v52;
v68 = v21 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 8: 
{
signed char v69;
signed int v70;
signed char v71;
unsigned int v72;
unsigned char v73;
v69 = -1 - v58;
v70 = v54 - -1;
v71 = v58 - -1;
v72 = 1U + 2U;
v73 = v25 (v69, v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 14: 
return v53;
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
unsigned short v76;
signed short v77;
signed int v78;
unsigned int v79;
signed short v80;
v76 = 1 + 2;
v77 = -2 - -4;
v78 = v32 + 0;
v79 = 5U + 3U;
v80 = v1 (v76, v77, v78, v79);
history[history_index++] = (int)v80;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
