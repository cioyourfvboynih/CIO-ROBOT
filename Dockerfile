# ALBERT - ROBOT
# Copyright (C) 2021-2022 TeamUltroid
# This file is a part of < https://github.com/Lordtrek/ALBERT-ROBOT/ >
# PLease read the GNU Affero General Public License in <https://www.github.com/Lordtrek/ALBERT-ROBOT/blob/main/LICENSE/>.

FROM theteamultroid/ultroid:main

# set timezone
ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    # cloning the repo and installing requirements.
    && git clone https://github.com/LordtTeamUltroidrek/Ultroid.git /root/TeamUltroid/ \
    && pip3 install --no-cache-dir -r root/TeamUltroid/requirements.txt \
    && pip3 install av --no-binary av

# Railway's banned dependency
RUN if [ ! $RAILWAY_STATIC_URL ]; then pip3 install --no-cache-dir yt-dlp; fi

# changing workdir
WORKDIR /root/TeamUltroid/

# start the bot
CMD ["bash", "startup"]
